function result = TichPhanSimpson38(y, h)
    n = length(y) - 1; 

    if mod(n, 3) ~= 0
        error('Phương pháp Simpson 3/8 yêu cầu số khoảng chia N phải CHIA HẾT CHO 3.');
    end

    sum_val = y(1) + y(end);
    
    for i = 2:n
        
        if mod(i-1, 3) == 0
            sum_val = sum_val + 2 * y(i); 
        else
            sum_val = sum_val + 3 * y(i); 
        end
    end
    
    result = (3*h/8) * sum_val;

end