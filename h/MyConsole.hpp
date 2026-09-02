#ifndef MYCONSOLE_HPP
#define MYCONSOLE_HPP

#include "../h/TCB.hpp"
#include "BoundedBuffer.hpp"

class MyConsole {
public:
    static void initMyConsole();

    static void myPut(char c);
    static char myGet();

    static void writeThrBody(void *);

    static void consoleHandler();

    static TCB* writeThr;

    static void wait();

    static void flushConsole();
private:
    static BoundedBuffer *inputBuffer,*outputBuffer;
};


#endif
