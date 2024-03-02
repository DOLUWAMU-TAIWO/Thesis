#include <stdarg.h>
#include <stdint.h>
#include <math.h>
#include <stdio.h>
#include <stdbool.h>

#include "kprintf.h"

#define SR_RX_FIFO_VALID_DATA   (1 << 0) /* data in receive FIFO */
#define SR_RX_FIFO_FULL         (1 << 1) /* receive FIFO full */
#define SR_TX_FIFO_EMPTY        (1 << 2) /* transmit FIFO empty */
#define SR_TX_FIFO_FULL         (1 << 3) /* transmit FIFO full */

struct uart_regs {
    volatile uint32_t rx_fifo;
    volatile uint32_t tx_fifo;
    volatile uint32_t status;
    volatile uint32_t control;
};

void kputc(char ch) {
    struct uart_regs *regs = (struct uart_regs *)0x60010000;
    while (regs->status & SR_TX_FIFO_FULL) {}
    regs->tx_fifo = ch & 0xff;
}

void kputs(const char *s) {
    while (*s) kputc(*s++);
    kputc('\r');
    kputc('\n');
}

void kprintf(const char * fmt, ...) {
    va_list vl;
    int is_format = 0;
    int is_long = 0;
    int is_char = 0;
    char c;

    va_start(vl, fmt);
    while ((c = *fmt++) != '\0') {
        if (is_format) {
            switch (c) {
            case 'l':
                is_long = 1;
                continue;
            case 'h':
                is_char = 1;
                continue;
            case 'x': {
                unsigned long n;
                long i;
                if (is_long) {
                    n = va_arg(vl, unsigned long);
                    i = (sizeof(unsigned long) << 3) - 4;
                }
                else {
                    n = va_arg(vl, unsigned int);
                    i = is_char ? 4 : (sizeof(unsigned int) << 3) - 4;
                }
                for (; i >= 0; i -= 4) {
                    long d;
                    d = (n >> i) & 0xF;
                    kputc(d < 10 ? '0' + d : 'a' + d - 10);
                }
                break;
            }
            case 'f': {
                // Assume double for simplicity due to default argument promotions
                double floatVal = va_arg(vl, double);
                char floatStr[64]; // Ensure the buffer is large enough
                ftoa(floatVal, floatStr, 6); // Example fixed precision of 6 decimal places
                kputs(floatStr);
                break;
            }

            case 'd': {
                char buf[32];
                long n;
                long i = sizeof(buf);
                if (is_long) {
                    n = va_arg(vl, long);
                }
                else {
                    n = va_arg(vl, int);
                }
                if (n < 0) {
                    kputc('-');
                    n = -n;
                }
                while (i > 0) {
                    buf[--i] = n % 10 + '0';
                    n = n / 10;
                    if (n == 0) break;
                }
                while (i < sizeof(buf)) kputc(buf[i++]);
                break;
            }
            case 's': {
                const char * s = va_arg(vl, const char *);
                while (*s) kputc(*s++);
                break;
            }
            case 'c':
                kputc(va_arg(vl, int));
                break;
            }
            is_format = 0;
            is_long = 0;
            is_char = 0;
        }
        else if (c == '%') {
            is_format = 1;
        }
        else if (c == '\n') {
            kputc('\r');
            kputc('\n');
        }
        else {
            kputc(c);
        }
    }
    va_end(vl);
}

void UART_Write(const char* str) {
    while (*str != '\0') {
        kputc(*str++);
    }
}

void UART_Read(char* buffer, int max_length) {
    struct uart_regs *regs = (struct uart_regs *)0x60010000;
    int count = 0;

    while (1) {
        // Wait until there is data in the receive FIFO
        while (!(regs->status & SR_RX_FIFO_VALID_DATA));

        char ch = regs->rx_fifo & 0xFF;

        // Echo the received character back to UART
        kputc(ch); // <-- Add this line for echoing

        // Store the character in the buffer
        if (count < max_length - 1) {
            buffer[count++] = ch;
        }

        // Check for newline or carriage return (end of input)
        if (ch == '\n' || ch == '\r') {
            break;
        }
    }

    // Null-terminate the string
    buffer[count] = '\0';
}




// C program for implementation of ftoa()



// Reverses a string 'str' of length 'len'
void reverse(char* str, int len) {
    int i = 0, j = len - 1;
    while (i < j) {
        char temp = str[i];
        str[i] = str[j];
        str[j] = temp;
        i++;
        j--;
    }
}

// Converts an integer to string and returns the length of the string.
// Adds leading zeros if the resulting string is shorter than 'minlen'.
int intToStr(int x, char str[], int minlen) {
    int i = 0;
    bool isNegative = x < 0;

    if (isNegative) {
        x = -x;
    }

    // Generate digits in reverse order
    do {
        str[i++] = (x % 10) + '0';
        x = x / 10;
    } while (x);

    // Add leading zeros if needed
    while (i < minlen) {
        str[i++] = '0';
    }

    if (isNegative) {
        str[i++] = '-';
    }

    str[i] = '\0'; // Terminate string

    // Reverse the string
    reverse(str, i);

    return i; // Return length of string
}

// Converts a floating-point number to a string.
void ftoa(float n, char *res, int afterpoint) {
    // Handle negative numbers
    if (n < 0) {
        res[0] = '-';
        ftoa(-n, res + 1, afterpoint);
        return;
    }

    int ipart = (int)n; // Extract integer part
    float fpart = n - (float)ipart; // Extract floating part

    // Convert integer part to string
    int i = intToStr(ipart, res, 0);

    // Process fractional part
    if (afterpoint != 0) {
        res[i] = '.'; // Add decimal point

        // Amplify the fractional part to the desired precision
        fpart *= pow(10, afterpoint);

        intToStr((int)(fpart + 0.5), res + i + 1, afterpoint); // Add rounded fractional part
    }
}
