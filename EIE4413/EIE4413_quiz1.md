# EIE4413_quiz1 Answer 

TANG Zhiheng 17083046d

## (i)

A typical DSP system consists of 4 major components:

a. Transducer: To convert a signal to the change of voltage when receiving the signal. After processing, a transducer is ofter needed to convert the signal from the change of voltage back to its original form

b. Anti-aliasing filter: To avoid aliasing when sampling, an anti-aliasing filter is employed to limit the maximum frequency of the signal to be lowered than half of the sampling frequency.

c. A/D and D/A converters: The A/D converter will first sample the analog signal to its discrete time form and then quantized the signal to become a digital signal. The D/A converter on the other hand will convert the processed digital signal back to the discrete time form. With the help of a low pass filter, the analog signal is reconstructed.

d. Digital processing unit: The digitalized data will then be processed by the digital processing unit, where different DSP algorithms will be implemented.
