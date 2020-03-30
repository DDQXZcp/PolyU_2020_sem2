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

x2 = [1,1,1,1]
X2 = fft(x1,8)
X2 = abs(X2)

x3 = [1,1,1,1]
X3 = fft(x3,32)
X3 = abs(X3)
~~~
## Output
~~~
>> run('C:\Users\17083046d\Documents\MATLAB\Lab1_17083046d_Q1_3.m')

x1 =

     1     1     1     1


X1 =

     4     0     0     0


X1 =

     4     0     0     0


x2 =

     1     1     1     1


X2 =

  Columns 1 through 4

   4.0000 + 0.0000i   1.0000 - 2.4142i   0.0000 + 0.0000i   1.0000 - 0.4142i

  Columns 5 through 8

   0.0000 + 0.0000i   1.0000 + 0.4142i   0.0000 + 0.0000i   1.0000 + 2.4142i


X2 =

    4.0000    2.6131         0    1.0824         0    1.0824         0    2.6131


x3 =

     1     1     1     1


X3 =

  Columns 1 through 4

   4.0000 + 0.0000i   3.7361 - 1.1333i   3.0137 - 2.0137i   2.0191 - 2.4602i

  Columns 5 through 8

   1.0000 - 2.4142i   0.1921 - 1.9504i  -0.2483 - 1.2483i  -0.2844 - 0.5320i

  Columns 9 through 12

   0.0000 + 0.0000i   0.4366 + 0.2334i   0.8341 + 0.1659i   1.0425 - 0.1027i

  Columns 13 through 16

   1.0000 - 0.4142i   0.7463 - 0.6125i   0.4005 - 0.5995i   0.1116 - 0.3680i

  Columns 17 through 20

   0.0000 + 0.0000i   0.1116 + 0.3680i   0.4005 + 0.5995i   0.7463 + 0.6125i

  Columns 21 through 24

   1.0000 + 0.4142i   1.0425 + 0.1027i   0.8341 - 0.1659i   0.4366 - 0.2334i

  Columns 25 through 28

   0.0000 + 0.0000i  -0.2844 + 0.5320i  -0.2483 + 1.2483i   0.1921 + 1.9504i

  Columns 29 through 32

   1.0000 + 2.4142i   2.0191 + 2.4602i   3.0137 + 2.0137i   3.7361 + 1.1333i


X3 =

  Columns 1 through 8

    4.0000    3.9043    3.6245    3.1827    2.6131    1.9599    1.2728    0.6032

  Columns 9 through 16

         0    0.4951    0.8504    1.0476    1.0824    0.9655    0.7210    0.3845

  Columns 17 through 24

         0    0.3845    0.7210    0.9655    1.0824    1.0476    0.8504    0.4951

  Columns 25 through 32

         0    0.6032    1.2728    1.9599    2.6131    3.1827    3.6245    3.9043

~~~
