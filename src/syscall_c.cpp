
#include "../h/syscall_c.h"
#include "../h/Riscv.hpp"
#include "../h/MySemaphore.hpp"

//MEMORY
void * mem_alloc(size_t size){
    if(size<=0) return nullptr;
    __asm__ volatile("mv a1, %0" : : "r"(size));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");
    void* returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

int mem_free(void* free){
    __asm__ volatile("mv a1, %0" : : "r"((uint64)free));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");
    int returnValue=0;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return returnValue;
}

size_t mem_get_free_space(){
    __asm__ volatile("li a0, 0x03");
    __asm__ volatile("ecall");
    int returnValue=0;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (size_t)returnValue;
}

size_t mem_get_largest_free_block(){
    __asm__ volatile("li a0, 0x04");
    __asm__ volatile("ecall");
    int returnValue=0;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    return (size_t)returnValue;
}

//THREADS
int thread_create (thread_t* handle,void(*start_routine)(void*),void* arg){
    void* stack = new uint64[DEFAULT_STACK_SIZE];
    if(stack==nullptr)  return -1;
    __asm__ volatile("mv a3, %0" : : "r"(arg));
    __asm__ volatile("mv a4, %0" : : "r"(stack));
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

int thread_exit (){
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

void thread_dispatch (){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");
}

// SEMAPHORE
int sem_open (sem_t* handle, unsigned init){
    __asm__ volatile("mv a2, %0" : : "r"(init));
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x21");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

int sem_close (sem_t handle){
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    __asm__ volatile("li a0, 0x22");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

int sem_wait (sem_t id){
    __asm__ volatile("mv a1, %0" : : "r"(id));
    __asm__ volatile("li a0, 0x23");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

int sem_signal (sem_t id){
    __asm__ volatile("mv a1, %0" : : "r"(id));
    __asm__ volatile("li a0, 0x24");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

//SLEEP

int time_sleep(time_t sleepTime){
    if(sleepTime<0) return -1;
    if(sleepTime==0) return 0;
    __asm__ volatile("mv a1, %0" : : "r"(sleepTime));
    __asm__ volatile("li a0, 0x31");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (int) ret;
}

//CONSOLE

void putc(char c){
    __asm__ volatile("mv a1, %0" : : "r"((uint64)c));
    __asm__ volatile("li a0, 0x42");
    __asm__ volatile("ecall");
}

char getc(){
    __asm__ volatile("li a0, 0x41");
    __asm__ volatile("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    return (char) ret;
}



