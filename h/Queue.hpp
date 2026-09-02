#ifndef QUEUE_HPP
#define QUEUE_HPP

#include "../lib/mem.h"

//Queue za scheduler i semafore, implementiran kao linked list
//Ideja preuzeta sa koda sa vezbi za genericku listu

template <typename T>
class Queue {
private:
    struct Elem {
        T* data;
        Elem* next;
        Elem(T* data) : data(data), next(nullptr) {}
    };

    Elem* head;
    Elem* tail;

public:
    Queue() : head(nullptr), tail(nullptr) {}

    bool empty() const { return head == nullptr; }

    void push(T* data) {
        Elem* elem = new Elem(data);
        if (tail) tail->next = elem;
        else head = elem;
        tail = elem;
    }

    T* pop() {
        if (!head) return nullptr;
        Elem* elem = head;
        head = head->next;
        if (!head) tail = nullptr;
        T* ret = elem->data;
        delete elem;
        return ret;
    }
};
#endif
