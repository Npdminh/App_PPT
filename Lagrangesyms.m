function result = Lagrangesyms(xa, ya)
    syms x;                 
    n = length(ya);         
    sum_poly = 0;           

    for i = 1:n
        product = ya(i);    
        for j = 1:n
            if i ~= j
                
                product = product * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        sum_poly = sum_poly + product;
    end

    result = expand(sum_poly);   
end