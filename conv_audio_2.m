
clear all;
close all;
clc;

[s, fs] = audioread("voice.wav");

a = 0.5;
D = 10000;
s = s(:,1);

size_audio = length(s);

y = [zeros(1, size_audio)];

for i = 1:size_audio
    if i>D
        y(i) = s(i) + a*y(i-D);
    end
end

sound(y, fs);