#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Riscv.hpp"
#include "../h/MySemaphore.hpp"
#include "../h/BoundedBuffer.hpp"
#include "../h/MyConsole.hpp"
#include "../test/printing.hpp"

extern void userMain();

void userWrap(void *arg){
    userMain();
}

void idleWrap(void * arg){
    while(true) {
        thread_dispatch();
    }
}

int main() {

    //Initialization of kernel
    Riscv::setMode(true);
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    MemoryAllocator::getAllocator();

    TCB* mainThread;
    thread_create(&mainThread, nullptr, nullptr);
    TCB::running=mainThread;

    MyConsole::initMyConsole();

    thread_create(&MyConsole::writeThr,&MyConsole::writeThrBody,nullptr);

    //User mode starts here
    Riscv::setMode(false);
    TCB *idleThread;
    thread_create(&idleThread, idleWrap, nullptr);
    TCB *userThread;
    thread_create(&userThread, userWrap, nullptr);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    while(!userThread->isFinished()){
        thread_dispatch();
    }

    //Exiting emulator...
    MyConsole::flushConsole();
    Riscv::quit();
    return 0;
}