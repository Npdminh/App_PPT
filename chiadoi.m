function [c,n] = chiadoi(fx,a,b,saiso)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n = 0; %so lan lap
fxi = str2func(['@(x)',fx]);
while(1)
    c = (a+b)/2;
    if(fxi(a)*fxi(c)<0)
        b =c;
    else a = c;
    end
    n = n+1;
    if abs(b-a) < saiso
        break;
    end
end
end