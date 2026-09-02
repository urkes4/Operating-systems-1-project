#include "../h/syscall_cpp.hpp"
#include "../h/TCB.hpp"

Thread::Thread(){
    this->body=wrapper;
    this->arg= this;
}
Thread::Thread(void (*body)(void *), void *arg) {
    this->body=body;
    this->arg=arg;
}
void Thread::dispatch() {
    thread_dispatch();
}
int Thread::start() {
    thread_create(&myHandle,body, arg);
    if(body== nullptr)  TCB::running=myHandle;
    if(myHandle!= nullptr)  return 0;
    return -1;
}
void Thread::wrapper(void *t) {
    Thread* thread=(Thread*)t;
    if(thread) {
        thread->run();
    }
}
Thread::~Thread() {
    myHandle->setFinished(true);
}

int Thread::sleep(time_t time) {
    return time_sleep(time);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}
int Semaphore::wait() {
    return sem_wait(myHandle);
}
int Semaphore::signal() {
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

void PeriodicThread::terminate() {
    period=0;
}
PeriodicThread::PeriodicThread(time_t period) : Thread(){
    this->period = period;
}

void PeriodicThread::run() {
    while(period!=0){
        periodicActivation();
        Thread::sleep(period);
    }
}

PeriodicThread::~PeriodicThread() noexcept {
    terminate();
}

char Console::getc() {
    return::getc();
}
void Console::putc(char c) {
    ::putc(c);
}