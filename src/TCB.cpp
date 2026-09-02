#include "../h/MemoryAllocator.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"
#include "../h/Asleep.hpp"
#include "../h/Riscv.hpp"

TCB* TCB::running = nullptr;
uint64 TCB::timeSliceCounter = 0;

TCB::TCB(Body body, void *arg, uint64 *stack)
        : context({(uint64)&stack[DEFAULT_STACK_SIZE],(uint64)&threadWrapper}),
          body(body), arg(arg), stack(stack), finished(false),
          blocked(false), timeSleep(0), timeSlice(TIME_SLICE){}

int TCB::createThreadHandle(TCB **handle, Body body, void *arg, uint64 *stack){
    *handle = new TCB(body,arg,stack);
    if(!(*handle))  return -1;
    Scheduler::put(*handle);
    return 0;
}

void TCB::dispatch() {
    TCB* old = running;
    if(!old->isFinished() && !old->isBlocked()){
        Scheduler::put(old);
    }
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}


void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->arg);
    thread_exit();
}

int TCB::exit() {
    running->setFinished(true);
    dispatch();
    return 0;
}

int TCB::putToSleep(time_t time) {
    if(time<=0) return -1;
    TCB::running->timeSleep = time;
    TCB::running->setBlocked(true);
    Asleep::put(TCB::running);
    TCB::timeSliceCounter = 0;
    dispatch();
    return 0;
}

TCB::~TCB() {delete[] stack;}