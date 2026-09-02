
#include "../lib/mem.h"
#include "../h/syscall_c.h"

//Overloading new and delete operators

void* operator new (size_t size){
    return mem_alloc(size);
}

void operator delete (void* arg) noexcept{
    mem_free(arg);
}

void *operator new[](size_t size) {
    return mem_alloc(size);
}

void operator delete[](void *arg) noexcept {
    mem_free(arg);
}
