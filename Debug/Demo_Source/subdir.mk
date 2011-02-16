################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Demo_Source/ParTest.c \
../Demo_Source/main.c \
../Demo_Source/serial.c 

OBJS += \
./Demo_Source/ParTest.obj \
./Demo_Source/main.obj \
./Demo_Source/serial.obj 

C_DEPS += \
./Demo_Source/ParTest.pp \
./Demo_Source/main.pp \
./Demo_Source/serial.pp 

OBJS__QTD += \
".\Demo_Source\ParTest.obj" \
".\Demo_Source\main.obj" \
".\Demo_Source\serial.obj" 

C_DEPS__QTD += \
".\Demo_Source\ParTest.pp" \
".\Demo_Source\main.pp" \
".\Demo_Source\serial.pp" 

C_SRCS_QUOTED += \
"../Demo_Source/ParTest.c" \
"../Demo_Source/main.c" \
"../Demo_Source/serial.c" 


# Each subdirectory must supply rules for building sources it contributes
Demo_Source/ParTest.obj: ../Demo_Source/ParTest.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/bin/cl430" -vmsp -g --define=__MSP430F2274__ --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/msp430/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/CCS4/MSP430" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/MemMang" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/include" --diag_warning=225 --printf_support=minimal --preproc_with_compile --preproc_dependency="Demo_Source/ParTest.pp" --obj_directory="Demo_Source" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

Demo_Source/main.obj: ../Demo_Source/main.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/bin/cl430" -vmsp -g --define=__MSP430F2274__ --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/msp430/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/CCS4/MSP430" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/MemMang" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/include" --diag_warning=225 --printf_support=minimal --preproc_with_compile --preproc_dependency="Demo_Source/main.pp" --obj_directory="Demo_Source" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '

Demo_Source/serial.obj: ../Demo_Source/serial.c $(GEN_OPTS) $(GEN_SRCS)
	@echo 'Building file: $<'
	@echo 'Invoking: Compiler'
	"C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/bin/cl430" -vmsp -g --define=__MSP430F2274__ --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/msp430/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/CCS4/MSP430" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/portable/MemMang" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/Demo_Source/Common_Demo_Files/include" --include_path="C:/Users/Theo/Desktop/MSP430/FreeRTOS/FreeRTOSV6.1.1/Demo/MSP430_MSP430F2274_CCS4/FreeRTOS_Source/include" --include_path="C:/Program Files (x86)/Texas Instruments/ccsv4/tools/compiler/msp430/include" --diag_warning=225 --printf_support=minimal --preproc_with_compile --preproc_dependency="Demo_Source/serial.pp" --obj_directory="Demo_Source" $(GEN_OPTS_QUOTED) $(subst #,$(wildcard $(subst $(SPACE),\$(SPACE),$<)),"#")
	@echo 'Finished building: $<'
	@echo ' '


