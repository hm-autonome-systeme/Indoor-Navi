################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FileHandler.c \
../Odometrie.c \
../ScanHandler.c \
../blescan.c \
../data_connection.c \
../iwlib.c \
../main.c \
../point.c \
../wlanscan.c 

OBJS += \
./FileHandler.o \
./Odometrie.o \
./ScanHandler.o \
./blescan.o \
./data_connection.o \
./iwlib.o \
./main.o \
./point.o \
./wlanscan.o 

C_DEPS += \
./FileHandler.d \
./Odometrie.d \
./ScanHandler.d \
./blescan.d \
./data_connection.d \
./iwlib.d \
./main.d \
./point.d \
./wlanscan.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


