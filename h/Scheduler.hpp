
#ifndef SCHEDULER_HPP
#define SCHEDULER_HPP

#include "Queue.hpp"

class TCB;

//Class for scheduler of ready threads, by FIFO
//Kod preuzet sa vezbi
class Scheduler
{
public:
    static Queue<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *tcb);

};

#endif
