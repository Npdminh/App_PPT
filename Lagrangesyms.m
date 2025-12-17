function result = Lagrangesyms(xa, ya)
    syms x;                 % dùng symbolic
    n = length(ya);         
    sum_poly = 0;           % không dùng tên sum

    for i = 1:n
        product = ya(i);    % nhân với y_i
        for j = 1:n
            if i ~= j
                % SỬA NGOẶC cho đúng công thức
                product = product * (x - xa(j)) / (xa(i) - xa(j));
            end
        end
        sum_poly = sum_poly + product;
    end

    result = expand(sum_poly);   % rút gọn đa thức
end