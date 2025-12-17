function result = TichPhanHinhThang(y, h)

    if length(y) < 2
        error('Cần ít nhất 2 điểm dữ liệu để tính tích phân.');
    end
        
    sum_inner = sum(y(2:end-1)); 
    result = (h/2) * (y(1) + 2*sum_inner + y(end));
    
end