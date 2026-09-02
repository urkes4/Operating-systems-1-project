#ifndef MEMALLOCATOR_HPP
#define MEMALLOCATOR_HPP

#include "../lib/hw.h"


class MemoryAllocator{
private:
    struct MemBlock{
        size_t size;
        MemBlock* next, *prev;
    };
    static MemBlock* freeHead;

    static void tryToMerge(MemBlock* cur);

public:
    static void getAllocator();

    static void* allocBlock (size_t size);

    static int freeBlock (void* ptr);

    static size_t getLargestBlock();

    static size_t getTotalFreeSize();

};
#endif
