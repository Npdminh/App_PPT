function [x1,n] = tieptuyen(fx, a, b, saiso)
        fx = str2func(['@(x)', fx]);
    x0 = (a+b)/2;  % điểm bắt đầu
    n = 0;
    while true
        n = n + 1;
        h = 1e-6;
        dfx = (fx(x0+h)-fx(x0-h))/(2*h);
        x1 = x0 - fx(x0)/dfx;  
        if abs(x1 - x0) < saiso
            break;
        end
        x0 = x1;
    end
end