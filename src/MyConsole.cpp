#include "../h/MyConsole.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

BoundedBuffer* MyConsole::inputBuffer = nullptr;
BoundedBuffer* MyConsole::outputBuffer = nullptr;
TCB*  MyConsole::writeThr = nullptr;

void MyConsole::initMyConsole() {
    MyConsole::inputBuffer=new BoundedBuffer(100);
    MyConsole::outputBuffer=new BoundedBuffer(100);
}

void MyConsole::flushConsole() {
    while (!outputBuffer->isEmpty()) {
        thread_dispatch();
    }
}

void MyConsole::myPut(char c) {
    outputBuffer->put(c);
}

char MyConsole::myGet() {
    return inputBuffer->get();
}

void MyConsole::writeThrBody(void *) {
    char *insert = (char *) CONSOLE_TX_DATA;
    while (*(char *) CONSOLE_STATUS & CONSOLE_TX_STATUS_BIT) {
        *insert = MyConsole::outputBuffer->get();
    }
}

void MyConsole::consoleHandler() {
    if (plic_claim() == CONSOLE_IRQ) {
        char *reg= (char *) CONSOLE_RX_DATA;
        while (*(char *) CONSOLE_STATUS & CONSOLE_RX_STATUS_BIT) {
            MyConsole::inputBuffer->put(*reg);
        }
        plic_complete(CONSOLE_IRQ);
    }
}
