#ifndef SYSCALL_C_HPP
#define SYSCALL_C_HPP

#include "../lib/hw.h"

//memory
void* mem_alloc (size_t size);

int mem_free (void*);

size_t mem_get_free_space();

size_t mem_get_largest_free_block();

//thread
class TCB;

typedef TCB* thread_t;
int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
);

int thread_exit ();

void thread_dispatch ();

//semaphore
class MySemaphore;
typedef MySemaphore* sem_t;
int sem_open (
        sem_t* handle,
        unsigned init
);

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal (sem_t id);

//sleep
typedef unsigned long time_t;
int time_sleep (time_t);

//console
const int EOF = -1;
char getc ();
void putc(char c);

#endif
