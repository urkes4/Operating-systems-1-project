#include "../h/BoundedBuffer.hpp"

BoundedBuffer::BoundedBuffer(uint64 cnt): maxCount(cnt), count(0), head(0), tail(0){
    sem_open(&itemAvailable, 0);
    sem_open(&spaceAvailable,maxCount);
    sem_open(&mutex, 1);
    buff = new char[maxCount];
}

char BoundedBuffer::get() {
    sem_wait(itemAvailable);
    sem_wait(mutex);
    count--;
    char c = buff[head];
    head = (head+1) % maxCount;
    sem_signal(mutex);
    sem_signal(spaceAvailable);
    return c;
}

void BoundedBuffer::put(char c) {
    sem_wait(spaceAvailable);
    sem_wait(mutex);
    count++;
    buff[tail] = c;
    tail = (tail+1) % maxCount;
    sem_signal(mutex);
    sem_signal(itemAvailable);
}

BoundedBuffer::~BoundedBuffer() {
    mem_free(spaceAvailable);
    mem_free(itemAvailable);
    mem_free(mutex);
    mem_free(buff);
}