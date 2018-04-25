################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../bus_component/bus_handler.c 

OBJS += \
./bus_component/bus_handler.o 

C_DEPS += \
./bus_component/bus_handler.d 


# Each subdirectory must supply rules for building sources it contributes
bus_component/%.o: ../bus_component/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


