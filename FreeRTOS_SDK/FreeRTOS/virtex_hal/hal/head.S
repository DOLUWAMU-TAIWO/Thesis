.section .text.start, "ax", @progbits
.globl _start
_start:
    /* Define BOOT_MEM_END directly */
    .equ BOOT_MEM_END, 0x81000000

    /* Set up the stack pointer with a large immediate value */
    lui sp, %hi(BOOT_MEM_END)
    addi sp, sp, %lo(BOOT_MEM_END)

    /* Call FreeRTOS's first task start function */
    call xPortStartFirstTask

_hang:
    /* Infinite loop */
    wfi
    j _hang
