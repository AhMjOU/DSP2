clf
clc
clear all
%% system define
num=[2.2403 2.4908 2.2403];
den=[1 -0.4 0.75];
n = 0:40;
D = 10;
a = 3.0;
b = -2;
x1 = D*a*cos(2*pi*0.1*n); %%Signal 1
x2 = D*b*cos(2*pi*0.4*n);  %% signal 2

y1 = filter(num,den,x1);
y2 = filter(num,den,x2);
y = y1 + y2;
subplot(2,1,1);
stem(n,y);
title('y = y1 + y2>>sumation after');
xlabel('Time index (n)');
ylabel('Amplitude');

x = x1 + x2;
z = D*filter(num,den,x);
subplot(2,1,2);
stem(n,z);
title('x=x1+x2 >> Sumation before');
xlabel('Time index (n)');
ylabel('Amplitude');