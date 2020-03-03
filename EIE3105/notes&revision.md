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

come from software -> execute a C statement in your program -> polling

come from signal -> an interrupt to trigger the ADC -> interrupt

Single conversion -> we just want to get a reading when we need

Single conversion -> do it when we request

Continuous conversion -> keep monitoring

Example: fire alarm

We select continuous conversion for the temperature sensor in an alarm.

When the reading is higher than 60 degrees, we turn on the alarm.

For a human being, we will do the calculation

Consider 4 bits, the voltage range is 0 to 5V.

0000 represents 0V

1111 represents 5V

The input voltage is 3.45V.

Do the calculation: 3.45 V / 5V x 15 = 10.35

To get the integer part, the digital output is 10 (decimal)

In binary, it should 1010

In microcontroller programming, we never do the division

Division operation is too complicated

So we use comparisons

That is what we call "N-bit approximation"

one digital value represents a range of voltage levels

"0000" represent the voltage between 0V and 0.3125V

"1111" represents the voltage between 4.6875V and 5V

How to use comparisons to find the digital output of 3.45V?

They have a 1-bit difference only

diffrence = measured voltage and the voltage represented by the bit pattern

The winner is "1000"

because its difference is the smallest one among all

The winner -> Among all options, "1000" is the best one to represent the measured voltage because its difference is the smallest one

The difference between "0100" and "1000" is 1 (1 bit)

The difference between "1000" and "1100" is 1 (1 bit)

Add 1 to the "1" in "0100", we have "1000"

The difference is the difference of the bit pattern

After the second comparison, we know that "1100" is the best bit pattern to represent the measured voltage 3.45V

We take 4 comparisons to get the answer 

14 cycles = 2 cycles for sampling + 1 cycle for one comparison x 12

Nobody asks me "why 13?", In AVR, 13 cycles = 1 cycle  for sampling and 1 cycle for comparison x 12 bits

For differential input, it takes 1.5 cycles for sampling

S&H = Sample and Hold

The leftmost pin is to connect Vcc (5V)
, The middle pin is to connect to the ADC
, The rightmost pin is to connect to the ground

Vout = R2 / (R1 + R2) x Voltage supply

"20" is the reading from the ADC

Why we need to connect to PA6

The brightness of the LED is controlled by the potentiometer

We generate a PWM to PA6

The brightness of the LED is depended on the pulse width of the PWM, the % of duty cycle

We assign the reading from the ADC (PA0) to the pulse width of the PWM

So when you turn the potentiometer in the clockwise direction, the distance between the wiper and the point B decreases and so the voltage drop between these two points decreases.

The reading decreases and also the pulse width of the PWM

the LED dims, and vice versa

We use the brightness of the LED to show the reading from the potentiometer

ADC1_1channel_init = GPIO + ADC configuration + ADC reset

setup the ADC clock

clock frequency of the ARM microcontroller is 72 MHz

The ADC is made by a third party, not ARM

Embed this ADC into ARM

Select Div6

When you get a new microcontroller and you need to use his ADC, please check the brand name or the model number of the ADC and find out the possible clock frequency range and then set the ADC clock properly

1, 2 or 3 are for all STM32 family members

In STM32F103RBT6, we have two ADCs only

So x = 1 or 2

### 20200303

It looks like the conversion speed is doubled

Two persons share the same job

We have only one external trigger source

But two ADCs take the turn to handle the external trigger

Two persons share the same job

But the difference is: we can get the trigger more frequently

This case is good if the external trigger comes very frequently so that one ADC may not handle all of them properly

interleaved mode (two ADCs work on one channel only) + inject mode (once we received an injected trigger, two ADCs work on the inject trigger at the same time)

When the injected conversion is completed, we go back to interleaved mode

FastInter1 = fast interleaved

SlowInter1 = slow interleaved

It supports single mode and continuous mode

single channel and multiple channels

In our example, we select ADC_Mode_Independent

DISABLE

single channel

ENABLE

Continuous mode

We keep monitoring the reading from the potentiometer

Choose what triggers the conversion

When the counter in Timer 1 reaches the value of CC1, start the conversion

ADC_ExternalTrigConv_T1_CC1: when the counter in Timer 1 reaches the value of CC1, start the conversion

TRGO

trigger in a certain period of timer defined in Timer 3

T3_TRGO = if time out, start the conversion

SWSTART = Software Start

SWSTART = we execute a statement in the program to start the conversion

ADC_CR2 = ADC Control Register 2

In ADC_CR2, we have EXTSEL[2:0]

EXTSEL = External Select

We have three bits in ADC_CR2 to select an external trigger

EXTSEL = 111 -> SWSTART

Assign a constant to the field ADC_ExternalTrigConv

can do the same thing

To Assign ADC_ExternalTrigCoonv_None to ADC_ExternalTrigConv is the same as to set 111 to EXTSEL

We can call a function to start the conversion

ADCH:ADCL

H = High byte

Low = low byte

ADLAR: to select it is right or left justified
