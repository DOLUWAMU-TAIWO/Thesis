#include <stdint.h>
#include <stdlib.h>

#include "common.h"
#include "kprintf.h"

static void usleep(unsigned us) {
    uintptr_t cycles0;
    uintptr_t cycles1;
    asm volatile ("csrr %0, 0xB00" : "=r" (cycles0));
    for (;;) {
        asm volatile ("csrr %0, 0xB00" : "=r" (cycles1));
        if (cycles1 - cycles0 >= us * 100) break;
    }
}

int main(void) {
    char answer[2];

    while (1) {
        kprintf("\nWhat processor is this?\n");
        kprintf("A) ARM\nB) RISC\nC) Intel\n");
        kprintf("Select A, B or C: ");

        UART_Read(answer, sizeof(answer));

        if (answer[0] == 'B') {
            kprintf("Correct! The processor is a RISC-V.\n");
        } else if (answer[0] == 'A' || answer[0] == 'C') {
            kprintf("Incorrect. The correct answer is B) RISC-V processor.\n");
        } else {
            kprintf("Invalid selection. Please choose A, B, or C.\n");
        }

        usleep(2000000); // Wait for 2 seconds before the next question
    }

    return 0;
}

