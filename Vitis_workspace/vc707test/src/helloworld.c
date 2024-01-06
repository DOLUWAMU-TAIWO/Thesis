#include "xparameters.h"
#include "xgpio.h"
#include "xil_printf.h"
#include "xuartlite.h"

#define LED_DEVICE_ID XPAR_AXI_GPIO_LED_DEVICE_ID
#define BTN_DEVICE_ID XPAR_AXI_GPIO_BUTTONS_DEVICE_ID
#define UART_DEVICE_ID XPAR_AXI_UARTLITE_0_DEVICE_ID
#define LED_MAX 8
#define BUTTON_PRESS_DELAY 10000000

XGpio GpioLed, GpioBtn;
XUartLite UartLite;

int main() {
    int status;
    int btnValue, prevBtnValue = 0;
    u32 ledValue = 1;

    // Initialize LED GPIO
    status = XGpio_Initialize(&GpioLed, LED_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("LED GPIO Initialization Failed\r\n");
        return XST_FAILURE;
    }

    // Initialize Button GPIO
    status = XGpio_Initialize(&GpioBtn, BTN_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("Button GPIO Initialization Failed\r\n");
        return XST_FAILURE;
    }

    // Initialize UART
    status = XUartLite_Initialize(&UartLite, UART_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("UART Initialization Failed\r\n");
        return XST_FAILURE;
    }

    // Set LED GPIO as output and Button GPIO as input
    XGpio_SetDataDirection(&GpioLed, 1, 0x0);
    XGpio_SetDataDirection(&GpioBtn, 1, 0xFFFFFFFF);

    while (1) {
        // Read button state
        btnValue = XGpio_DiscreteRead(&GpioBtn, 1);

        // Check for button press (rising edge)
        if (btnValue != 0 && prevBtnValue == 0) {
            // Cycle through LEDs
            XGpio_DiscreteWrite(&GpioLed, 1, ledValue);
            xil_printf("LED State: %08x\r\n", ledValue);

            // Move to next LED
            ledValue = ledValue << 1;
            if (ledValue >= (1 << LED_MAX)) {
                ledValue = 1;
            }

            // Delay to debounce button press and allow UART to send data
            for (int i = 0; i < BUTTON_PRESS_DELAY; i++);
        }

        // Update previous button state
        prevBtnValue = btnValue;
    }

    return XST_SUCCESS;
}
