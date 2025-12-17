function y = TichPhanSimpson(fx, a, b, N)
    if mod(N, 2) ~= 0 || N <= 0
        error('Số đoạn con N phải là số nguyên dương chẵn cho công thức Simpson 1/3.');
    end
    
    h = (b - a) / N;
    
    fx0 = fx(a); 
    fxN = fx(b); 
    
    sum_odd = 0;   
    sum_even = 0;  
   
    for i = 1 : N - 1
        xi = a + i * h;
        fxi = fx(xi);
        
        if mod(i, 2) ~= 0 
            sum_odd = sum_odd + fxi;
        else 
            sum_even = sum_even + fxi;
        end
    end
    
    y = (h / 3) * (fx0 + 4 * sum_odd + 2 * sum_even + fxN);
end