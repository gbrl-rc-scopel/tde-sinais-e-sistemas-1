clear all;
close all;
clc;

s1 = [zeros(1,10) ones(1,5) zeros(1,5)];

s2 = [ones(1,3) zeros(1,17)];

y = minha_conv(s1,s2);

figure();
stem(y);

figure();
stem(conv(s1,s2));