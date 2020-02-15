# EIE4413_quiz1 Answer 20200214

TANG Zhiheng 17083046d

## (i)

A typical DSP system consists of 4 major components:

a. Transducer: To convert a signal to the change of voltage when receiving the signal. After processing, a transducer is ofter needed to convert the signal from the change of voltage back to its original form

b. Anti-aliasing filter: To avoid aliasing when sampling, an anti-aliasing filter is employed to limit the maximum frequency of the signal to be lowered than half of the sampling frequency.

c. A/D and D/A converters: The A/D converter will first sample the analog signal to its discrete time form and then quantized the signal to become a digital signal. The D/A converter on the other hand will convert the processed digital signal back to the discrete time form. With the help of a low pass filter, the analog signal is reconstructed.

d. Digital processing unit: The digitalized data will then be processed by the digital processing unit, where different DSP algorithms will be implemented.

## (ii)

Reviewing the procedures of sampling and signal reconstruction:

The analog signal will first be sampled into discrete forms, and the spectrum will be periodic. We need to capture the central period in spectrum (-fmax, fmax) using a low pass filter. Then the captured period will be used for signal reconstuction

## (iii)

From the question, we know that the highest frequency component of original signal is fmax = 100khz, the sampling frequency is fs = 44.1kHz, and fs < 2fmax. By Shannon's sampling theorem, aliasing will occur and the signal will not be constructed successfully. 

We can apply an anti-liasing filter which only allows frequency components under 20kHz to pass. Frequency components over 20Hz have no use to the music. Also, it is under Nyquist rate =  44.1kHz * 2 = 88.2kHz. Aliasing will not occur.


