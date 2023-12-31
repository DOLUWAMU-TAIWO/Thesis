
/*******************************************************************
*
* CAUTION: This file is automatically generated by HSI.
* Version: 2022.2
* DO NOT EDIT.
*
* Copyright (C) 2010-2024 Xilinx, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT 

* 
* Description: Driver configuration
*
*******************************************************************/

#include "xparameters.h"
#include "xgpio.h"

/*
* The configuration table for devices
*/

XGpio_Config XGpio_ConfigTable[XPAR_XGPIO_NUM_INSTANCES] =
{
	{
		XPAR_AXI_GPIO_ANODES_DEVICE_ID,
		XPAR_AXI_GPIO_ANODES_BASEADDR,
		XPAR_AXI_GPIO_ANODES_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_ANODES_IS_DUAL
	},
	{
		XPAR_AXI_GPIO_BUTTONS_DEVICE_ID,
		XPAR_AXI_GPIO_BUTTONS_BASEADDR,
		XPAR_AXI_GPIO_BUTTONS_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_BUTTONS_IS_DUAL
	},
	{
		XPAR_AXI_GPIO_LEDS_DEVICE_ID,
		XPAR_AXI_GPIO_LEDS_BASEADDR,
		XPAR_AXI_GPIO_LEDS_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_LEDS_IS_DUAL
	},
	{
		XPAR_AXI_GPIO_RGB_DEVICE_ID,
		XPAR_AXI_GPIO_RGB_BASEADDR,
		XPAR_AXI_GPIO_RGB_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_RGB_IS_DUAL
	},
	{
		XPAR_AXI_GPIO_SEVEN_DEVICE_ID,
		XPAR_AXI_GPIO_SEVEN_BASEADDR,
		XPAR_AXI_GPIO_SEVEN_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_SEVEN_IS_DUAL
	},
	{
		XPAR_AXI_GPIO_SWITCH_DEVICE_ID,
		XPAR_AXI_GPIO_SWITCH_BASEADDR,
		XPAR_AXI_GPIO_SWITCH_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_SWITCH_IS_DUAL
	}
};


