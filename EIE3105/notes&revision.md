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
