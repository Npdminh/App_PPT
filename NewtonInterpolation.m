function result = NewtonInterpolation(xa, ya, x) 
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

n = length(xa);
d = ya;
for j = 2:n
    for i = n:-1:j
        d(i) = (d(i) - d(i-1)) / (xa(i) - xa(i-j+1));
    end
end
result = d(n);
for i = n-1:-1:1
    result = result * (x - xa(i)) + d(i);
end
end