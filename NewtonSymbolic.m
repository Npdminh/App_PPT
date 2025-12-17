function P = NewtonSymbolic(xa, ya)
    syms x;
    n = length(xa);
    d = ya;   % copy y-values

    % Tính sai phân chia (divided differences)
    for j = 2:n
        for i = n:-1:j
            d(i) = (d(i) - d(i-1)) / (xa(i) - xa(i-j+1));
        end
    end

    % Xây dựng đa thức Newton
    P = d(1);
    mult = 1;

    for k = 2:n
        mult = mult * (x - xa(k-1));   % nhân dần (x - x0)(x - x1)...
        P = P + d(k) * mult;
    end

    P = expand(P);  % rút gọn đa thức
end
