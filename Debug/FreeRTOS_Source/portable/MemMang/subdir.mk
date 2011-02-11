################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRTOS_Source/portable/MemMang/heap_1.c 

OBJS += \
./FreeRTOS_Source/portable/MemMang/heap_1.obj 

C_DEPS += \
./FreeRTOS_Source/portable/MemMang/heap_1.pp 

OBJS__QTD += \
".\FreeRTOS_Source\portable\MemMang\heap_1.obj" 

C_DEPS__QTD += \
".\FreeRTOS_Source\portable\MemMang\heap_1.pp" 

C_SRCS_QUOTED += \
"../FreeRTOS_Source/portable/MemMang/heap_1.c" 


# Each subdirectory must supply rules for building sources it contributes
FreeRTOS_Source/portable/MemMang/heap_1.obj: ../FreeRTOS_Source/portable/MemMang/heap_1.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/bin/cl430" -vmsp -g --define=__MSP430F2274__ --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/msp430/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/CCS4/MSP430" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/MemMang" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/include" --diag_warning=225 --printf_support=minimal --preproc_with_compile --preproc_dependency="FreeRTOS_Source/portable/MemMang/heap_1.pp" --obj_directory="FreeRTOS_Source/portable/MemMang" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


