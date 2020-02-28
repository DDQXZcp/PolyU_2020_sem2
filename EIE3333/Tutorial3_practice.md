1. single-bit error: only one bit in the data unit has changed

burst-error: two or more bits in the data unit have changed

single error can occur in the presence of white noise

burst error can be caused by impulse noise. The effect of burst error is greated at higher data rate

### (need to ask lecturer)2. To detect or correct errors, redundant bits of data must be added?

3. in forward error detection, the receiver tried to correct the corrupted codeword. In error-correction by transmission, the corrupted codeword is discarded.(The sender needs to retransmit the message)

4. dmin = k+1 = 3

5. n = k + r, n is the size of codeword, k is the size of the dataword, r is the size of the remainder

the remainder is always one bit smaller than the divisor

6. What kind of arithmetic is used to add data items in checksum calculation?

summation & complement

7. What kind of error is undetectable by the checksum?

Error is undetectable when it is balanced by an opposite inversion at the corresponding bit in another section.

### (need to ask lecturer)8. Can the value of a checksum be all 0s (in binary)? Defend your answer. Can the value be all 1s (in binary)? Defend your answer.

The value of a checksum can be all 0s (in binary). This happens when the value of the sum (after wrapping) becomes all 1s (in binary). It is almost impossible for the value of a checksum to be all 1s. For this to happen, the value of the sum (after wrapping) must be all 0s which means all data units must be 0s.

9. Assume we are sending data items of 16-bit length. If two data items are swapped during transmission, can the traditional checksum detect this error? Explain.

The error cannot be detected because the sum of items is not affected in this swapping.
