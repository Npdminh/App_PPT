function result = TichPhanSimpson13(y, h)
    
    n = length(y) - 1; 
    
    if mod(n, 2) ~= 0
        error('Phương pháp Simpson 1/3 yêu cầu số khoảng chia N phải là số CHẴN.');
    end
    
    odd_sum = sum(y(2:2:end-1));  
    even_sum = sum(y(3:2:end-2));
    
    result = (h/3) * (y(1) + 4*odd_sum + 2*even_sum + y(end));

end