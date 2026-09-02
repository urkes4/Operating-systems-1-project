#ifndef BOUNDEDBUFFER_HPP
#define BOUNDEDBUFFER_HPP


#include "../lib/hw.h"
#include "syscall_c.h"
#include "MySemaphore.hpp"

//Class for implementing bounded buffer for producer-consumer
//Klasa preuzeta sa kolokvijumskog zadatka

class BoundedBuffer {
public:
    BoundedBuffer(uint64 cnt);

    char get();

    void put(char c);

    bool isEmpty() const{
        return count==0;
    }
    ~BoundedBuffer();
private:
    char *buff;
    uint64 maxCount;
    uint64 count;
    uint64 head, tail;
    MySemaphore *itemAvailable, *spaceAvailable, *mutex;
};


#endif
