clear all;
close all;
clc;

[s, fs] = audioread("voice.wav");

h = [1 zeros(1, 9998) 0.5];

s = s(:,1);

y = conv(s, h);

sound(y, fs);