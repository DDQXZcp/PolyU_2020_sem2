Review questions:

1. Flow control & Error Control

2. The data link layer needs to pack bits into frames. Framing divides a message into smaller entities to make flow and error control more manageable..

3. Flow control refers to a set of procedures that restricts the amount of data the sender can send before waiting for acknowledgement. It is to prevent buffer overflow. 

It is influenced by transmission time: Time taken to emit all bits into medium.

and Propagation time: Time for a bit to traverse the link.

Error control: Detection & Correction of error.

There are two kinds of error: Lost frame: a frame fails to arrived at the other side Damaged frame: frame arrives but some of the bits are in error.

4. Go-back-N ARQ is more efficient than stop-and-wait ARQ. Go-back-N ARQ uses pipelining and stop-and-wait ARQ does not. In stop-and-wait ARQ, we need to wait for acknowledgement for each frame before sending the next frame. In Go-back-N ARQ, we can send several frames before receiving acknowledgement.

5. In Go-back-N ARQ, if there is an error in a frame, the destination will discard that frame and all futre frames until frame in errors is received correctly. Transmitter must go back and  retransmit that frame and subsequent frames. 

In Selective-Repeat ARQ, destination will send negative acknowledgement indication the frame in error. Transmitter only retransmit the error frame. 

6. Piggybacking is to improve the efficiency of bidirectional transmission. When a frame is carrying data from A to B, it can also carry control information about frames from B. When a frame is carrying data from B to A, it can also carry control information about frames from A.

7. The packet from the network layer should be rejected.

8. Is a negative acknowledgement (REJ) necessary in the stop-and-wait ARQ protocol?

In fact, a negative acknowledgement(REJ) is not necessary at all, since the sender will automatically timeout if it fails to receive the ACK. The REJ improve the efficiency by informing the sender of a bad frame as early as possible.

## Question

1. sender sends a series of packets to the same destination using 5-bit sequence number. If the sequence
number starts with 0, what is the sequence number after sending 100 packets?

2^5=32, 101%32 = 5, the sequence number is 5-1 = 4

2. The timer of a system using the Stop-and –Wait ARQ protocol has a time-out of 6ms. Draw the flow
diagram for four frames if the round trip delay is 4ms. Assume no data frame or control frame is lost
or damaged.

![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE3333/Tut4Q2.jpg)

3. A system uses the Stop-and-Wait ARQ protocol. If each data frame carries 1000 bits of
data, how long does it take to send 1 million bits of data if the distance between sender and
receiver is 5000 Km and the propagation speed is 2 x 108 m? Given the data rate of the link
is 1 Mbps. Ignore waiting, and processing delays. We assume no data or control frame is
lost or damaged.

10^6/1000 = 1000 frames, Data frame propagation time = 5000,000/2*10^8 = 25ms, Data frame transmission time = 1000 / 10^6 = 1ms (per frame)

The time for one transmission cycle (1 frame) = tframe + 2tprop = 51ms

Total delay = 1000*51ms = 51s

4. Repeat Question 3 using the Go-Back-N ARQ protocol with a window size of 7. Ignore the
overhead due to the header and trailer.

The time for the first ack arrives = tframe + 2tprop = 51ms (2a+1)

The time for sending 7 frames = 7 tframe = 7ms (W)

### So the utilization is not 1 and the server has to wait. In this case, each window transmission takes 51ms.

For all frames exept the last window

The time for one transmission cycle (1 frame) = tframe + 2tprop = 51ms

For the last window

The time for one transmission cycle (1 frame) = 6frame + 2tprop = 6 + 2=8ms

Total time = 51*142 + 8 = 7.298s

5. Repeat Question 3 using the Selective-Repeat ARQ protocol with a window size of 4.
Ignore the overhead due to the header and trailer.

We need to send 1000/4 = 250 windows

The time for the first ack arrives = tframe + 2tprop = 51ms

The time for sending 4 frames = 4 tframe = 4ms

So the utilization is not 1 and the server has to wait. In this case, each window transmission takes 51ms.

For the last windows, we need to wait for the acknowledgement of the last frame, so

Total delay = 249 x 51 ms + 4 tframe + 2tprop = 12.699 + 0.054 = 12.753s

其实核心就是因为最后一个window后面加了 2tprop， 3种情况都一样的
