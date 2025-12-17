function result = Lagrange(xa, ya, x)
    %UNTITLED4 Summary of this function goes here
    %   Detailed explanation goes here
 n = length(ya); %thay xa bang ya cung duoc
 sum = 0;
 for i = 1:n
     product = ya(i);
     for j = 1:n
        if(i ~= j) 
           product = product * (x - xa(j)) / (xa(i) - xa(j));
        end
     end
     sum = sum + product;
 end
 result = sum;
end