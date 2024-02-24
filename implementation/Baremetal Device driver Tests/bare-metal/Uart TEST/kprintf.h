#ifndef _BOOT_KPRINTF_H
#define _BOOT_KPRINTF_H

extern void kputc(char ch);
extern void kputs(const char *);
extern void kprintf(const char *, ...);
extern void UART_Write(const char* str);
extern void UART_Read(char* buffer, int max_length);

#endif /* _BOOT_KPRINTF_H */

