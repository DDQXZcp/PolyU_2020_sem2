# Review question

### 1. What are the objectives of multiple access protocols in data communications?

To deal with allocation problem in situations like conference where there are multiple speakers

How to allocate a single multi-access channel among competing users

### 2. What are the three main categories of multiple access protocols?

Random access protocols, controlled-access protocols, channelization protocols

### 3. Explain why collision is an issue in a random access protocol but not in controlled access or channelizing protocols.

In random access methods, there is no access control (as there is in controlled access methods) and there is no predefined channels (as in channelization). Each station can transmit when it desires. This liberty may create collision.

### 4. What are the differences between non-persistent and p-persistent CSMA techniques?

Non-persistent CSMA: If the medium is idle, transmit. 

If the medium is busy, wait random amount of time and re sense the channel

p persistent CSMA: If the medium is idle, transmit with a probability p with a probability q 1 p defer until the next slot

If the medium is busy, continue listening until the channel is idle then transmit with probability p

### 5. How collisions can be detected in shared transmission medium?

Page 35

When A is transmission a frame, A receive C's frame and detects collision and aborts. It is the same on C's side.

### 6. What are the major differences between Aloha and CSMA protocols?

Aloha: let users transmit whenever they have data to be sent

CSMA: a station that wishes to transmit attempts to avoid collisions by first listening to the medium to determine if another transmission is in progress

### 7. What is the exponential backoff algorithm in CSMA?

Choose a random number R between 0 and 2^k-1

Wait Tb Time, Tb = R*Tp. Tp is maximum propagation time

