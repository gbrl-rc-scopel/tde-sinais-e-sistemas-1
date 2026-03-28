clear all;
close all;
clc;

f = 3; % frequência

t = 0:0.01:3*(1/f); % 3 ciclos
y = sin(2*pi*f*t);

figure()
stem(t,y);