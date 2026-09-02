#include "../h/Asleep.hpp"
#include "../h/Scheduler.hpp"

Asleep::Node* Asleep::head = nullptr;

void Asleep::put(TCB* tcb) {
    Node* newNode = new Node(tcb);

    if (!head) {
        head = newNode;
        return;
    }

    Node* curr = head;
    Node* prev = nullptr;

    while (curr && curr->tcb->timeSleep <= tcb->timeSleep) {
        tcb->timeSleep -= curr->tcb->timeSleep;
        prev = curr;
        curr = curr->next;
    }

    if (!curr) {
        newNode->tcb->timeSleep = tcb->timeSleep;
        prev->next = newNode;
    }
    else if (!prev) {
        head->tcb->timeSleep -= tcb->timeSleep;
        newNode->tcb->timeSleep = tcb->timeSleep;
        newNode->next = head;
        head = newNode;
    }
    else {
        newNode->tcb->timeSleep = tcb->timeSleep;
        prev->next = newNode;
        newNode->next = curr;
        curr->tcb->timeSleep -= tcb->timeSleep;
    }
}

void Asleep::update() {
    if (!head) return;

    head->tcb->timeSleep--;
    while (head && head->tcb->timeSleep == 0) {
        Node* old = head;
        TCB* tcb = old->tcb;
        tcb->setBlocked(false);
        Scheduler::put(tcb);
        head = head->next;
        delete old;
    }
}
