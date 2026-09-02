#include "../h/syscall_c.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/TCB.hpp"
#include "../h/MySemaphore.hpp"
#include "../h/Asleep.hpp"
#include "../h/MyConsole.hpp"
#include "../test/printing.hpp"

bool Riscv::isKernelMode = true;

void Riscv::popSppSpie() {
    if(isKernelMode){
        __asm__ volatile("csrs sstatus, %0" : : "r"(SSTATUS_SPP));
    }
    else{
        __asm__ volatile("csrc sstatus, %0" : : "r"(SSTATUS_SPP));
    }
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap(){
    uint64 volatile arg1, arg2, arg3, arg4;

    //Reading arguments from registers
    __asm__ volatile("mv %0, a4" : "=r"(arg4));
    __asm__ volatile("mv %0, a1" : "=r"(arg1));
    __asm__ volatile("mv %0, a2" : "=r"(arg2));
    __asm__ volatile("mv %0, a3" : "=r"(arg3));
    volatile uint64 cause, a0;
    __asm__ volatile("mv %0, a0" : "=r"(a0));
    cause=r_scause();
    volatile uint64 sepc, sstatus;
    sepc=r_sepc();
    sstatus=r_sstatus();

    if (cause == 0x8 || cause == 0x9) {
        sepc += 4;

        switch (a0) {
            case MEM_ALLOC: {
                void* ret = MemoryAllocator::allocBlock((size_t)arg1);
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case MEM_FREE: {
                int ret = MemoryAllocator::freeBlock((void*)arg1);
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case MEM_GET_FREE_SPACE: {
                size_t res = MemoryAllocator::getTotalFreeSize();
                __asm__ volatile("sw %0, 80(x8)" : : "r"(res));
                break;
            }
            case MEM_GET_LARGEST_FREE_BLOCK: {
                size_t res = MemoryAllocator::getLargestBlock();
                __asm__ volatile("sw %0, 80(x8)" : : "r"(res));
                break;
            }
            case THREAD_CREATE: {
                int ret = TCB::createThreadHandle((TCB**)arg1, (Body)arg2, (void*)arg3, (uint64*)arg4);
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case THREAD_EXIT: {
                int ret = TCB::exit();
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case THREAD_DISPATCH: {
                TCB::setTimeSliceCounter(0);
                TCB::dispatch();
                break;
            }
            case SEM_OPEN: {
                int ret = MySemaphore::semOpen((MySemaphore**)arg1, (unsigned int)arg2);
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case SEM_CLOSE: {
                int ret = MySemaphore::semClose((MySemaphore*)arg1);
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case SEM_WAIT: {
                MySemaphore* sem = (MySemaphore*)arg1;
                int ret = 1;
                if(!sem)    ret = -1;
                else ret = sem->wait();
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case SEM_SIGNAL: {
                MySemaphore* sem = (MySemaphore*)arg1;
                int ret = 1;
                if(!sem)    ret = -1;
                else ret = sem->signal();
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case TIME_SLEEP: {
                int ret = TCB::putToSleep((time_t)arg1);
                __asm__ volatile("sw %0, 80(x8)" : : "r"(ret));
                break;
            }
            case GETC: {
                char c = MyConsole::myGet();
                __asm__ volatile("sw %0, 80(x8)" : : "r"(c));
                break;
            }
            case PUTC: {
                MyConsole::myPut((char)arg1);
                break;
            }
        }
    }
    else if(cause == (1ul<<63 | 1)){
        //timer interrupt
        Asleep::update();
        TCB::timeSliceCounter++;
        if(TCB::timeSliceCounter >= TCB::running->getTimeSlice()){
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }
        mc_sip(Riscv::SIP_SSIP);
    }
    else if(cause == (1ul<<63 | 9)){
        //console interrupt
        MyConsole::consoleHandler();
    }
    else{
        printString("Unhandled error on line: ");
        printInt(sepc);
        printString(", cause: ");
        if(cause==0x5){
            printString("address not available for reading.");
        }
        else if(cause==0x7){
            printString("address not available for writing.");
        }
        else if(cause==0x2){
            printString("illegal instruction.");
        }
        else{
            printString("unknown error. ");
        }
        printString("\n");
        MyConsole::flushConsole();
        Riscv::quit();

    }
    w_sepc(sepc);
    w_sstatus(sstatus);
}