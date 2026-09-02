#ifndef TCB_HPP
#define TCB_HPP

#include "../h/MemoryAllocator.hpp"
#include "../lib/hw.h"

//Apstraction for thread control block (TCB)
//Klasa preuzeta sa vezbi
class TCB {
public:

    friend class Asleep;
    friend class Riscv;

    using Body = void(*)(void *);

    TCB(Body body, void *arg, uint64 *stack);

    bool isFinished() const {return finished;}
    void setFinished(bool f) { TCB::finished = f;}

    bool isBlocked() const {return blocked;}
    void setBlocked(bool f) { TCB::blocked = f;}

    uint64 getTimeSlice() const{return timeSlice;}

    static int createThreadHandle(TCB**handle, Body body, void*arg, uint64* stack);

    static void threadWrapper();

    static int exit();

    static void dispatch();

    static int putToSleep(time_t time);

    static void setTimeSliceCounter(uint64 time){
        timeSliceCounter = time;
    }

    static uint64 getTimeSliceCounter(){
        return timeSliceCounter;
    }

    ~TCB();

    static TCB* running;

private:

    struct Context{
        uint64 sp;
        uint64 ra;
    };
    Context context;

    Body body;
    void* arg;
    uint64 * stack;

    bool finished;
    bool blocked;

    uint64 timeSleep;
    time_t timeSlice;

    static uint64 timeSliceCounter;
    static void contextSwitch(Context* oldC, Context* newC);
    static uint64 constexpr TIME_SLICE=2;
};

#endif
