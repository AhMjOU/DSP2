clc;clear all;close all;
%operations on the amplitude of signal
x=input('Enter input sequence:');a=input('Enter amplification factor:');b=input('Enter attenuation factor:');c=input('Enter amplitude reversal factor:�);
y1=a*x;y2=b*x;
y3=c*x;
n=length(x);subplot(2,2,1);stem(0:n-1,x);xlabel('time');ylabel('amplitude');title('Input signal');subplot(2,2,2);stem(0:n-1,y1);xlabel('time');





ylabel('Amplitude');title('Amplified signal');subplot(2,2,3);stem(0:n-1,y2);xlabel('time');ylabel('Amplitude');title('Attenuated signal');subplot(2,2,4);stem(0:n-1,y3);xlabel('time');ylabel('Amplitude');title('Amplitude reversal signal');%scalar additiond=input('Input the scalar to be added:');y4=d+x;figure(2);stem(0:n-1,y4);xlabel('time');ylabel('Amplitude');title('Scalar addition signal');
