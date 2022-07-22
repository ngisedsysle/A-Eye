/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 *
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "scugic_header.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "xdevcfg.h"
#include "devcfg_header.h"
#include "xdmaps.h"
#include "dmaps_header.h"
#include "xqspips.h"
#include "qspips_header.h"
#include "xscutimer.h"
#include "scutimer_header.h"
#include "xscuwdt.h"
#include "scuwdt_header.h"
#include "unistd.h"

XGpio img_data_driver;
XGpio img_valid_driver;
XGpio img_ready_driver;
XGpio krn_data_driver;
XGpio krn_valid_driver;
XGpio krn_ready_driver;
XGpio res_data_driver;
XGpio res_valid_driver;
XGpio res_ready_driver;

/**
 * Cannot be used for the moment because the pulse take 17 cycles of the 50MHz hardware clock.
 */
int PulseValid(XGpio *InstancePtr)
{
	XGpio_DiscreteWrite(InstancePtr, 1, 0x1);
	XGpio_DiscreteWrite(InstancePtr, 1, 0x0);
	return XST_SUCCESS;
}

int Initialize_Drivers()
{
	// img_data_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&img_data_driver, XPAR_AXI_GPIO_IMG_DATA_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&img_data_driver, 1, 0x00000000);

	// img_valid_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&img_valid_driver, XPAR_AXI_GPIO_IMG_VALID_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&img_valid_driver, 1, 0x00000000);

	// img_ready_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&img_ready_driver, XPAR_AXI_GPIO_IMG_READY_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&img_ready_driver, 1, 0xFFFFFFFF);

	// krn_data_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&krn_data_driver, XPAR_AXI_GPIO_KRN_DATA_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&krn_data_driver, 1, 0x00000000);

	// krn_valid_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&krn_valid_driver, XPAR_AXI_GPIO_KRN_VALID_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&krn_valid_driver, 1, 0x00000000);

	// krn_ready_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&krn_ready_driver, XPAR_AXI_GPIO_KRN_READY_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&krn_ready_driver, 1, 0xFFFFFFFF);

	// res_data_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&res_data_driver, XPAR_AXI_GPIO_RES_DATA_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&res_data_driver, 1, 0xFFFFFFFF);

	// res_valid_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&res_valid_driver, XPAR_AXI_GPIO_RES_VALID_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&res_valid_driver, 1, 0xFFFFFFFF);

	// res_ready_driver
	// Initialize the GPIO driver
	if (XGpio_Initialize(&res_ready_driver, XPAR_AXI_GPIO_RES_READY_DEVICE_ID) != XST_SUCCESS)
	{
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	// Set the direction
	XGpio_SetDataDirection(&res_ready_driver, 1, 0x00000000);

	return XST_SUCCESS;
}

int main()
{
	print("---Entering main---\n\r");

	if (Initialize_Drivers()!=XST_SUCCESS)
	{
		print("Error initializing drivers\n\r");
		return XST_FAILURE;
	}

	//  Set img data
	XGpio_DiscreteWrite(&img_data_driver, 1, 0x3F800000);

	// Set krn data
	XGpio_DiscreteWrite(&krn_data_driver, 1, 0x3F800000);

	// Set valid
	XGpio_DiscreteWrite(&res_ready_driver, 1, 0x1);
	XGpio_DiscreteWrite(&img_valid_driver, 1, 0x1);
	XGpio_DiscreteWrite(&krn_valid_driver, 1, 0x1);

	// // Send pulse --> Too long, cannot be used for the moment
	// PulseValid(&img_valid_driver);
	// PulseValid(&krn_valid_driver);

	// Wait for the result
	while(1){
		while(XGpio_DiscreteRead(&res_ready_driver, 1) == 0);
		u32 result = XGpio_DiscreteRead(&res_data_driver, 1);
		float* fl_res_ptr = (float*) &result;
		printf("Got a result ! %f \r\n", *fl_res_ptr);
	}

	return 0;
}