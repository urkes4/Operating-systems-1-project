#include "../h/syscall_c.h"
#include "../h/MemoryAllocator.hpp"

MemoryAllocator::MemBlock* MemoryAllocator::freeHead = nullptr;

void MemoryAllocator::getAllocator() {
    freeHead = (MemBlock*)((char*)HEAP_START_ADDR);
    freeHead->next = freeHead->prev = nullptr;
    freeHead->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR - sizeof(MemBlock));
}

void* MemoryAllocator::allocBlock(size_t size) {
    if (size == 0) return nullptr;

    size_t sz = (size / MEM_BLOCK_SIZE + (size % MEM_BLOCK_SIZE == 0 ? 0 : 1)) * MEM_BLOCK_SIZE;

    //Minimum size - sizeof(MemBlock)
    if (sz < sizeof(MemBlock)) {
        sz = sizeof(MemBlock);
    }

    MemBlock* cur = freeHead;
    MemBlock* candidate = nullptr;


    //Best-fit algorithm
    int found = 0;

    for(;cur;cur=cur->next) {
        if(cur->size>=size){
            if(!found){
                candidate = cur;
                found = 1;
            }
            else if(cur->size < candidate->size){
                candidate = cur;
            }
        }
    }

    cur = candidate;

    if (!cur) return nullptr;

    if (cur->size == sz || cur->size-sz < sizeof(MemBlock)) {
        if (cur->next) cur->next->prev = cur->prev;
        if (cur->prev) cur->prev->next = cur->next;
        else freeHead = cur->next;

        return (char*)cur + sizeof(MemBlock);
    }
    else {
        MemBlock* newFree = (MemBlock*)((char*)cur + sizeof(MemBlock) + sz);
        newFree->size = cur->size - sz - sizeof(MemBlock);

        newFree->next = cur->next;
        newFree->prev = cur->prev;

        if (cur->next) cur->next->prev = newFree;
        if (cur->prev) cur->prev->next = newFree;
        else freeHead = newFree;

        cur->size = sz;

        return (char*)cur + sizeof(MemBlock);
    }
}

int MemoryAllocator::freeBlock(void* ptr) {
    if (!ptr) return 0;

    MemBlock* cur = (MemBlock*)((char*)ptr - sizeof(MemBlock));

    if ((char*)cur < (char*)HEAP_START_ADDR || (char*)cur >= (char*)HEAP_END_ADDR) return -1;

    MemBlock* tmp = freeHead;
    MemBlock* prev = nullptr;

    while (tmp && (char*)tmp < (char*)cur) {
        prev = tmp;
        tmp = tmp->next;
    }

    cur->next = tmp;
    cur->prev = prev;
    if (tmp) tmp->prev = cur;
    if (prev) prev->next = cur;
    else freeHead = cur;

    tryToMerge(cur);
    tryToMerge(cur->prev);

    return 0;
}

//Ideja preuzeta iz zadatka sa vezbi
void MemoryAllocator::tryToMerge(MemBlock* cur) {
    if (!cur) return;
    if (cur->next && (char*)cur + sizeof(MemBlock) + cur->size == (char*)cur->next) {
        MemBlock* nextBlock = cur->next;
        cur->size += sizeof(MemBlock) + nextBlock->size;
        cur->next = nextBlock->next;
        if (nextBlock->next) nextBlock->next->prev = cur;
    }
}

size_t MemoryAllocator::getLargestBlock() {
    if (!freeHead) return 0;
    size_t curMax = freeHead->size;
    MemBlock* cur = freeHead->next;
    while (cur) {
        if (cur->size > curMax) curMax = cur->size;
        cur = cur->next;
    }
    return curMax;
}

size_t MemoryAllocator::getTotalFreeSize() {
    size_t total = 0;
    MemBlock* cur = freeHead;
    while (cur) {
        total += cur->size;
        cur = cur->next;
    }
    return total;
}
