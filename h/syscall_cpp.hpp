#ifndef SYSCALL_CPP_HPP
#define SYSCALL_CPP_HPP
#include "syscall_c.h"


//class Thread
class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();

    int start ();

    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run (){}
private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;
    static void wrapper(void* t);
};

//class Semaphore
class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();

    int wait ();
    int signal ();

private:
    sem_t myHandle;
};

//class PeriodicThread - derived from Thread
class PeriodicThread : public Thread {
public:
    void terminate ();
    virtual ~PeriodicThread();

    virtual void run() override;
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
};

//class Console
class Console {
public:
    static char getc ();
    static void putc (char);
};

#endif
