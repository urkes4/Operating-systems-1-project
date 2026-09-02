#ifndef ASLEEP_HPP
#define ASLEEP_HPP

#include "TCB.hpp"

//Class for asleep threads, linked inputBuffer a single linked list
class Asleep {
private:
    struct Node {
        TCB* tcb;
        Node* next;
        explicit Node(TCB* t) : tcb(t), next(nullptr) {}
    };

    static Node* head;

public:
    static void put(TCB* tcb);
    static void update();
};

#endif

