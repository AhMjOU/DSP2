clc;
clear all;
close all;
%Arithmetic operations on signals%Addition and multiplication of two signals
x1=input('Enter the sequence of first signal:');
x2=input('Enter the sequence of second signal:');
l1=length(x1);
l2=length(x2);
subplot(2,2,1);
stem(0:l1-1,x1);
xlabel('time');
ylabel('Amplitude');
title('Input sequence 1');
subplot(2,2,2);
stem(0:l2-1,x2);
xlabel('time');
ylabel('Amplitude');
title('Input sequence 2');
%Addition
y1=x1+x2;
subplot(2,2,3);
stem(0:l1-1,y1);
xlabel('time');
ylabel('Amplitude');
title('Addition of two signals');
%multiplication
y2=x1.*x2;
subplot(2,2,4);
stem(0:l1-1,y2);
xlabel('time');
ylabel('Amplitude');
title('Multiplication of two signals');


