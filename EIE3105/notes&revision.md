# 20200218

notes:

The problem is we need to make sure that the 16-bit counter is sufficient

You can set Period very large to ensure the measurement period is long enough

It is meaningful to set 50000

The reason is through the program, we want to tell we know the upper bound of the period of the input waveform

Rising: low to high

Falling: high to low

BothEdge: trigger either the rising or falling edge

TI1 = IC1

TI2 = IC2

TI3 = ICt3

TI3 = IC3

TI4 = IC4

N = complement

N = invert

PA13 is wrong. It should be PB13

Check the table

BKIN = break event

break feature

BKIN is to design to handle break features (events)

BOD in AVR?

Still remember "BOD" in AVR?

BOD = Brown-out Detection

When the input voltage is lower than a specified threshold (e.g., I expect 5V, but we have 4.95Vonly), then we shut down the microcontroller to protect the chips inside

BOD in AVR is quite similar to BKIN in ARM

BOD is to protect the microcontroller

BINK is to protect the connected external device

About this setting, we may use TIM1_BKIN to send PWM to a connected external device

When BKIN gets an event (e.g., the external device has hardware problem), then a hardware protection mechanism is executed to disable the PWM outputs

ETR = External Trigger Input

TR = Trigger

External clock source is used to capture input

not internal clock

Google "TIM1_ETR STM32"

Google "TIM1_BKIN STM32"

only few channels are used for IC, the rest of them are used for PWM

TI1 = IC2, TI2= IC1, TI3 = IC4, TI4 = IC3

A Hall effect sensor is a device that is used to measure the magnitude of a magnetic field. Its output voltage is directly proportional to the magnetic field strength through it.

Hall effect sensors are used for proximity sensing, positioning, speed detection, and current sensing applications.

The ARM microcontroller can be used to measure the speed of a Formula 1

EIE2100

The transient state of RCL circuit

First-order transient state

First-order differential equation

noise canceller in AVR?

About Input Capture in AVR

In Input Capture in AVR

we have a bit to enable/disable noise canceller. When the bit is set, we enable noise canceller

It means the measurement will start when the measured periods of EIGHT successive waveforms are the same.

We declare there is no noise, so we start the measurement and get the measured value

In ARM, we have something similar, 0 to F (16 in decimal), ARM is more powerful than AVR

AVR: a choice to have a filter or not, ARM: a choice to have a filter or not and you can select the number of successive waveforms for the measurement

no filter (TIM_ICFilter = 0)

TIM3_CH1_PWM_init = GPIO + TIM3 + OC

OC = Output Compare (in AVR)

OC = Output Channel (in ARM)

Output Compare = Output Channel = PWM

0.01 ms = resolution

# 20200225

56 MHz is the clock frequency for ADC

for ADC but not the microcontroller

In AVR, clock for the ADC = clock for the CPU

In ARM, we need to select a clock for two ADCs

1.17 us at 72 MHz

faster clock frequency does not mean give you shorter conversion time

If the clock frequency is too fast, the ADC may not have enough time to do the conversion. So it takes more clock cycles to complete the conversion

Thus, it takes a longer time (maybe)

For your reference

Period = 5000 (50 ms = 5000 x 0.01 ms)

ADC12 = ? 12 ADCs? ADC12 = ADC1 and ADC2 If we have three ADCs (ADC1, ADC2 and ADC3), the most probably we call it ADC123

ADC12: the pin definitions are appropriate for both ADC1 and ADC2

INx = input channel x

16 channels -> 16 pins

IN0 -> PA0
