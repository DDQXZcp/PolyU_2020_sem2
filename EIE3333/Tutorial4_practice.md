Review questions:

1. Flow control & Error Control

2. The data link layer needs to pack bits into frames. Framing divides a message into smaller entities to make flow and error control more manageable..

3. Flow control refers to a set of procedures that restricts the amount of data the sender can send before waiting for acknowledgement. It is to prevent buffer overflow. 

It is influenced by transmission time: Time taken to emit all bits into medium.

and Propagation time: Time for a bit to traverse the link.

Error control: Detection & Correction of error.

There are two kinds of error: Lost frame: a frame fails to arrived at the other side Damaged frame: frame arrives but some of the bits are in error.

4. Go-back-N ARQ is more efficient than stop-and-wait ARQ. Go-back-N ARQ uses pipelining and stop-and-wait ARQ does not. In stop-and-wait ARQ, we need to wait for acknowledgement for each frame before sending the next frame. In Go-back-N ARQ, we can send several frames before receiving acknowledgement.

