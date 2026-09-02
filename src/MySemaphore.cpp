#include "../h/MySemaphore.hpp"
#include "../h/Scheduler.hpp"
#include "../h/syscall_c.h"

int MySemaphore::semOpen(MySemaphore **handle, unsigned int init) {
    MySemaphore* sem = new MySemaphore(init);
    *handle = sem;
    if(!(*handle))  return -1;
    return 0;
}

void MySemaphore::block() {
    TCB::running->setBlocked(true);
    this->waitingThreads.push(TCB::running);
    TCB::dispatch();
}

void MySemaphore::unblock() {
    TCB* t = this->waitingThreads.pop();
    t->setBlocked(false);
    Scheduler::put(t);
}

int MySemaphore::wait() {
    if(this->isClosed()) return -1;
    this->val--;
    if(this->val<0){
        block();
    }
    return 0;
}

int MySemaphore::semClose(MySemaphore *sem) {
    if(!sem || sem->isClosed())return -1;
    sem->setClosed(true);
    TCB* cur = sem->waitingThreads.pop();
    while(cur){
        sem->unblock();
        cur = sem->waitingThreads.pop();
    }
    delete sem;
    return 0;
}

int MySemaphore::signal() {
    if(this->isClosed())    return -1;
    this->val++;
    if(this->val <= 0){
        unblock();
    }
    return 0;
}