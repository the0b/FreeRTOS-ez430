;/*
;    FreeRTOS V6.1.1 - Copyright (C) 2011 Real Time Engineers Ltd.
;
;    ***************************************************************************
;    *                                                                         *
;    * If you are:                                                             *
;    *                                                                         *
;    *    + New to FreeRTOS,                                                   *
;    *    + Wanting to learn FreeRTOS or multitasking in general quickly       *
;    *    + Looking for basic training,                                        *
;    *    + Wanting to improve your FreeRTOS skills and productivity           *
;    *                                                                         *
;    * then take a look at the FreeRTOS books - available as PDF or paperback  *
;    *                                                                         *
;    *        "Using the FreeRTOS Real Time Kernel - a Practical Guide"        *
;    *                  http://www.FreeRTOS.org/Documentation                  *
;    *                                                                         *
;    * A pdf reference manual is also available.  Both are usually delivered   *
;    * to your inbox within 20 minutes to two hours when purchased between 8am *
;    * and 8pm GMT (although please allow up to 24 hours in case of            *
;    * exceptional circumstances).  Thank you for your support!                *
;    *                                                                         *
;    ***************************************************************************
;
;    This file is part of the FreeRTOS distribution.
;
;    FreeRTOS is free software; you can redistribute it and/or modify it under
;    the terms of the GNU General Public License (version 2) as published by the
;    Free Software Foundation AND MODIFIED BY the FreeRTOS exception.
;    ***NOTE*** The exception to the GPL is included to allow you to distribute
;    a combined work that includes FreeRTOS without being obliged to provide the
;    source code for proprietary components outside of the FreeRTOS kernel.
;    FreeRTOS is distributed in the hope that it will be useful, but WITHOUT
;    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
;    more details. You should have received a copy of the GNU General Public 
;    License and the FreeRTOS license exception along with FreeRTOS; if not it 
;    can be viewed here: http://www.freertos.org/a00114.html and also obtained 
;    by writing to Richard Barry, contact details for whom are available on the
;    FreeRTOS WEB site.
;
;    1 tab == 4 spaces!
;
;    http://www.FreeRTOS.org - Documentation, latest information, license and
;    contact details.
;
;    http://www.SafeRTOS.com - A version that is certified for use in safety
;    critical systems.
;
;    http://www.OpenRTOS.com - Commercial support, development, porting,
;    licensing and training services.
;*/
	.cdecls C,LIST, "FreeRTOSConfig.h"
;	.cdecls C,LIST, "portmacro.h"

	.global vTaskIncrementTick
	.global vTaskSwitchContext
	.global vPortSetupTimerInterrupt
	.global pxCurrentTCB			;use .ref instead?
	.global usCriticalNesting		;use .ref instead?

	.def vPortPreemptiveTickISR
	.def vPortCooperativeTickISR
	.def vPortYield
	.def xPortStartScheduler
	
;//----------------------------------------------------------
portSAVE_CONTEXT .macro

;	/* Save the remaining registers. */
	push	r4
	push	r5
	push	r6
	push	r7
	push	r8
	push	r9
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	mov.w	&usCriticalNesting, r14
	push	r14
	mov.w	&pxCurrentTCB, r12
	mov.w	r1, 0(r12)
	.endm
	
;//------------------------------------------------------------
portRESTORE_CONTEXT .macro
	mov.w	&pxCurrentTCB, r12
	mov.w	@r12, r1
	pop		r15
	mov.w	r15, &usCriticalNesting
	pop		r15
	pop		r14
	pop		r13
	pop		r12
	pop		r11
	pop		r10
	pop		r9
	pop		r8
	pop		r7
	pop		r6
	pop		r5
	pop		r4

;	/* The last thing on the stack will be the status register.
;    Ensure the power down bits are clear ready for the next
;    time this power down register is popped from the stack. */
	bic.w   #0xf0,0(SP)

	reti
	.endm
;/*-----------------------------------------------------------*/
;*
;* The RTOS tick ISR.
;*
;* If the cooperative scheduler is in use this simply increments the tick
;* count.
;*
;* If the preemptive scheduler is in use a context switch can also occur.
;*/
	.text
	.align 2
	
vPortPreemptiveTickISR: .asmfunc
	
	; The sr is not saved in portSAVE_CONTEXT() because vPortYield() needs
	;to save it manually before it gets modified (interrupts get disabled).
	push.w sr
	portSAVE_CONTEXT
				
	call	#vTaskIncrementTick
	call	#vTaskSwitchContext
		
	portRESTORE_CONTEXT
	.endasmfunc
;-----------------------------------------------------------

	.align 2
	
vPortCooperativeTickISR: .asmfunc
	
	; The sr is not saved in portSAVE_CONTEXT() because vPortYield() needs
	;to save it manually before it gets modified (interrupts get disabled).
	push.w sr
	portSAVE_CONTEXT
				
	call	#vTaskIncrementTick
		
	portRESTORE_CONTEXT
	
	.endasmfunc
;/*-----------------------------------------------------------*/
;/*
; * Manual context switch called by the portYIELD() macro.
; */
 	.align 2
vPortYield: .asmfunc

;	/* Mimic an interrupt by pushing the SR. */
	push	SR			

;	/* Now the SR is stacked we can disable interrupts. */
	dint			
				
;	/* Save the context of the current task. */
	portSAVE_CONTEXT			

;	/* Switch to the highest priority task that is ready to run. */
	call	#vTaskSwitchContext		

;	/* Restore the context of the new task. */
	portRESTORE_CONTEXT
	.endasmfunc
;/*-----------------------------------------------------------*/


;/*
; * Start off the scheduler by initialising the RTOS tick timer, then restoring
; * the context of the first task.
; */
 	.align 2
xPortStartScheduler: .asmfunc

;	/* Setup the hardware to generate the tick.  Interrupts are disabled
;	when this function is called. */
	call	#vPortSetupTimerInterrupt

;	/* Restore the context of the first task that is going to run. */
	portRESTORE_CONTEXT
	.endasmfunc
;/*-----------------------------------------------------------*/
	

	.end
		
