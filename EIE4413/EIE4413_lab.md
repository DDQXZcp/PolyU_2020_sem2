# EIE4413_lab


Dear student, 

If you still cannot do the remote login, you may try the following approach:

To connect to the remote PC, student using Windows 10/8.1 may also go to the VDI Gateway link using Internet Explorer 11. Just click the following link:

https://vscc.polyu.edu.hk/RDWeb/Pages/en-US/desktops.aspx

Just have a try.

Daniel Lun
## Q1.1
~~~
x = rand(1,65536);	% Define a random vector x with 65536 elements
y = rand(1,65213);	% Define a random vector y with 65213 elements
tic				% Start to count
fft(x);
t1 = toc			% Record the finish time

tic		 		% Start to count
fft(y);
t2 = toc			% Record the finish time
~~~
## Output
~~~
t1 =

    0.0012


t2 =

    0.0073
~~~
## Q1.2
~~~
x1 = [1,1,1,1,0,0,0,0]
X1 = fft(x1)

x2 = [1,1,-1,0,1,0,-1,1]
X2 = fft(x2)

x3 = [1,1,1,1,-1,-1,-1,-1]
X3 = fft(x3)

x4 = [0,1,1,0,0,-1,-1,-1]
X4 = fft(x4)
~~~
## Output
~~~
>> run('C:\Users\17083046d\Documents\MATLAB\Lab1_17083046d_Q1_2.m')

x1 =

     1     1     1     1     0     0     0     0


X1 =

  Columns 1 through 4

   4.0000 + 0.0000i   1.0000 - 2.4142i   0.0000 + 0.0000i   1.0000 - 0.4142i

  Columns 5 through 8

   0.0000 + 0.0000i   1.0000 + 0.4142i   0.0000 + 0.0000i   1.0000 + 2.4142i


x2 =

     1     1    -1     0     1     0    -1     1


X2 =

    2.0000    1.4142    4.0000   -1.4142   -2.0000   -1.4142    4.0000    1.4142


x3 =

     1     1     1     1    -1    -1    -1    -1


X3 =

  Columns 1 through 4

   0.0000 + 0.0000i   2.0000 - 4.8284i   0.0000 + 0.0000i   2.0000 - 0.8284i

  Columns 5 through 8

   0.0000 + 0.0000i   2.0000 + 0.8284i   0.0000 + 0.0000i   2.0000 + 4.8284i


x4 =

     0     1     1     1     0    -1    -1    -1


X4 =

  Columns 1 through 4

   0.0000 + 0.0000i   0.0000 - 4.8284i   0.0000 + 0.0000i   0.0000 - 0.8284i

  Columns 5 through 8

   0.0000 + 0.0000i   0.0000 + 0.8284i   0.0000 + 0.0000i   0.0000 + 4.8284i

~~~
## Q1.3
~~~
x1 = [1,1,1,1]
X1 = fft(x1,4)
X1 = abs(X1)
subplot(511)
stem(X1)
x2 = [1,1,1,1]
X2 = fft(x1,8)
X2 = abs(X2)
subplot(512)
stem(X2)
x3 = [1,1,1,1]
X3 = fft(x3,32)
X3 = abs(X3)
subplot(513)
stem(X3)
x4 = [1,1,1,1]
X4 = fft(x4,128)
X4 = abs(X4)
subplot(514)
stem(X4)
x5 = [1,1,1,1]
X5 = fft(x5,1024)
X5 = abs(X5)
subplot(515)
stem(X5)
~~~
## Output
![image](https://github.com/DDQXZcp/PolyU_2020_sem2/blob/master/EIE4413/Lab1_Q1_3.png)

## Q2.1
~~~
x = [1,2,3,4,5,6,5,4,3,2,1,1]
h = [1,4,6,4,1]
y = conv(x,h)
~~~
## Output
~~~
>> run('C:\Users\17083046d\Documents\MATLAB\Lab1_17083046d_Q2_1.m')

x =

     1     2     3     4     5     6     5     4     3     2     1     1


h =

     1     4     6     4     1


y =

  Columns 1 through 13

     1     6    17    32    48    64    78    84    78    64    48    33    21

  Columns 14 through 16

    12     5     1
~~~
## Q2.2
~~~
x = [1,2,3,4,5,6,5,4,3,2,1,1]
h = [1,4,6,4,1]
y = conv(x,h)
X = fft(x,16)
H = fft(h,16)
XH = X.*H
Y=fft(y,16)
a1=abs(XH)
a2=abs(Y)
a3=mean((a1-a2).^2)
~~~
## Output
~~~
>> run('C:\Users\17083046d\Documents\Lab1Q2_2.m')

x =

     1     2     3     4     5     6     5     4     3     2     1     1


h =

     1     4     6     4     1


y =

  Columns 1 through 13

     1     6    17    32    48    64    78    84    78    64    48    33    21

  Columns 14 through 16

    12     5     1


X =

  Columns 1 through 4

  37.0000 + 0.0000i  -8.9649 -19.7954i  -3.1213 + 1.7071i   1.3622 - 0.2011i

  Columns 5 through 8

   0.0000 - 1.0000i  -1.1196 - 0.3016i   1.1213 - 0.2929i   0.7222 + 0.1041i

  Columns 9 through 12

  -1.0000 + 0.0000i   0.7222 - 0.1041i   1.1213 + 0.2929i  -1.1196 + 0.3016i

  Columns 13 through 16

   0.0000 + 1.0000i   1.3622 + 0.2011i  -3.1213 - 1.7071i  -8.9649 +19.7954i


H =

  Columns 1 through 4

  16.0000 + 0.0000i  10.4689 -10.4689i   0.0000 -11.6569i  -5.4074 - 5.4074i

  Columns 5 through 8

  -4.0000 + 0.0000i  -1.0779 + 1.0779i   0.0000 + 0.3431i   0.0164 + 0.0164i

  Columns 9 through 12

   0.0000 + 0.0000i   0.0164 - 0.0164i   0.0000 - 0.3431i  -1.0779 - 1.0779i

  Columns 13 through 16

  -4.0000 + 0.0000i  -5.4074 + 5.4074i   0.0000 +11.6569i  10.4689 +10.4689i


XH =

   1.0e+02 *

  Columns 1 through 4

   5.9200 + 0.0000i  -3.0109 - 1.1338i   0.1990 + 0.3638i  -0.0845 - 0.0628i

  Columns 5 through 8

   0.0000 + 0.0400i   0.0153 - 0.0088i   0.0010 + 0.0038i   0.0001 + 0.0001i

  Columns 9 through 12

   0.0000 + 0.0000i   0.0001 - 0.0001i   0.0010 - 0.0038i   0.0153 + 0.0088i

  Columns 13 through 16

   0.0000 - 0.0400i  -0.0845 + 0.0628i   0.1990 - 0.3638i  -3.0109 + 1.1338i


Y =

   1.0e+02 *

  Columns 1 through 4

   5.9200 + 0.0000i  -3.0109 - 1.1338i   0.1990 + 0.3638i  -0.0845 - 0.0628i

  Columns 5 through 8

   0.0000 + 0.0400i   0.0153 - 0.0088i   0.0010 + 0.0038i   0.0001 + 0.0001i

  Columns 9 through 12

   0.0000 + 0.0000i   0.0001 - 0.0001i   0.0010 - 0.0038i   0.0153 + 0.0088i

  Columns 13 through 16

   0.0000 - 0.0400i  -0.0845 + 0.0628i   0.1990 - 0.3638i  -3.0109 + 1.1338i


a1 =

  Columns 1 through 8

  592.0000  321.7297   41.4710   10.5302    4.0000    1.7675    0.3977    0.0169

  Columns 9 through 16

         0    0.0169    0.3977    1.7675    4.0000   10.5302   41.4710  321.7297


a2 =

  Columns 1 through 8

  592.0000  321.7297   41.4710   10.5302    4.0000    1.7675    0.3977    0.0169

  Columns 9 through 16

         0    0.0169    0.3977    1.7675    4.0000   10.5302   41.4710  321.7297


a3 =

   5.1778e-28
~~~
5.1778e-28 is nearly zero. We can conlude that they are the same
## Change to 32
~~~
x = [1,2,3,4,5,6,5,4,3,2,1,1]
h = [1,4,6,4,1]
y = conv(x,h)
X = fft(x,32)
H = fft(h,32)
XH = X.*H
Y=fft(y,32)
a1=abs(XH)
a2=abs(Y)
a3=mean((a1-a2).^2)
~~~
## Output
~~~
a3 =

   4.0724e-28
~~~
It is ok
## Q2.3
~~~
tic
x = randn(1,102500); 
h = randn(1,1024); 
y = conv(x,h); 
t1 = toc
~~~
## Output
~~~
>> run('C:\Users\17083046d\Documents\Lab1Q3_3.m')

t1 =

    0.0055
~~~

## From LGQ

~~~
x = randn(1,102500); h = randn(1,1024); y = conv(x,h);

tic; L = 1025; k = 100; y3 = zeros(1,103523);

H = fft(h, 2048);

for i = 1 : k xs = x((L.(i-1))+1 : L.i); Xs = fft(xs, 2048); yr = ifft(Xs.H); y3((L.(i-1))+1 : (L.(i-1))+2048) = y3((L.(i-1))+1 : (L.*(i-1))+2048) + yr; end t = toc; err = immse(y, y3);
~~~
