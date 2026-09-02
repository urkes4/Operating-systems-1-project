
#include "../h/Scheduler.hpp"
#include "../h/TCB.hpp"

Queue<TCB> Scheduler::readyThreadQueue;

TCB *Scheduler::get()
{
    TCB* cur = readyThreadQueue.pop();
    return cur;
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.push(tcb);
}