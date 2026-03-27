

clear all;
close all;
clc;

s1 = [zeros(1,10) ones(1,5) zeros(1,5)];

s2 = [ones(1,3) zeros(1,17)];

res = [zeros(1, 20)];

figure();

stem(s1);

figure();

stem(s2);

aux = 0;

for i = 1:20
   for j = i:-1:1
        k = i + 1 - j;
        aux = s1(k) * s2(j);
        res(i) = res(i) + aux;
   end
end

figure();

stem(res);

res1 = conv(s1,s2);

figure();

stem(res1);

