function [x1,n] = lap(fx, fp, a, b, saiso)
%lap Summary of this function goes here
%   Detailed explanation goes here
    x1 = (a+b)/2;
    n = 0;

    while n < 1000
        n = n+1;
        x_new = fp(x1);
        
        if abs(x_new - x1) < saiso
            x1 = x_new;
            return;
        end
        x1 = x_new;
    end    
end