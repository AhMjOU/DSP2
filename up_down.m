clc;
clear all;
close all;
%continuous sinusoidal signal
a=input('Enter the amplitude:');
f=input('Enter the Timeperiod:');
t=-10:1:20;
x=a*sin(2*pi*f*t);
subplot(3,1,1);
stem(t,x);
xlabel('time');
ylabel('Amplitude');
title('Sinusoidal signal');

%downsampling the signal
y4=downsample(x,2);
subplot(3,1,2);
stem(y4);
xlabel('time');
ylabel('Amplitude');
title('Downsampled signal');
%upsampling the signal
y5=upsample(x,3);
subplot(3,1,3);
stem(y5);
xlabel('time');
ylabel('Amplitude');
title('Upsampled signal');