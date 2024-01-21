#include "FreeRTOS.h"
#include "task.h"
#include "kprintf.h"  // Make sure kputs is declared in this header

void vAssertCalled(const char *file, int line) {
    kputs("Assertion failed");
    while(1) {}
}

void printHelloWorld(void *pvParameters) {
    (void)pvParameters;
    for (;;) {
        kprintf("Hello, World!");  // Using kputs instead of kprintf
        vTaskDelay(pdMS_TO_TICKS(1000)); // 1 second delay
    }
}

int main(void) {

    xTaskCreate(printHelloWorld, "HelloWorldTask", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY + 1, NULL);
    vTaskStartScheduler(); // Start the scheduler

    return 0;
}
