#ifndef MYSEMAPHORE_HPP
#define MYSEMAPHORE_HPP

#include "TCB.hpp"
#include "MemoryAllocator.hpp"
#include "Queue.hpp"

class MySemaphore {
private:
    int val;
    Queue<TCB> waitingThreads;
    bool closed;

    MySemaphore(int val = 1){
        this->closed = false;
        this->val = val;
    }
protected:

    //Helper functions for blocking/deblocking threads
    void block();
    void unblock();

public:

    bool isClosed(){
        return closed;
    }

    void setClosed(bool val){
        closed=val;
    }

    static int semOpen(MySemaphore** handle, unsigned init);
    int wait();
    int signal();
    static int semClose(MySemaphore* sem);
};

#endif //PROJEKAT_SEM_HPP
