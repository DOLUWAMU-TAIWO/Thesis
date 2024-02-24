#include <stdint.h>
#include "xadc.h"

// Base address for the XADC
#define XADC_BASE_ADDR 0x60030000

// Function to read from the XADC register
static inline uint16_t xadc_read() {
    // Accessing the temperature register directly
    return *((volatile uint16_t *)(XADC_BASE_ADDR));
}

// Function to get the raw temperature data
uint16_t get_raw_temperature() {
    uint16_t raw_temp = xadc_read();
    // Shift right by 4 bits to get the 12-bit temperature value
    return (raw_temp >> 4) & 0xFFF;
}

