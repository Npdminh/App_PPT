function df = DaoHam(f, x0, h, method, order)
% f: hàm số (function handle)
% x0: điểm đạo hàm
% h: bước
% method: 'forward', 'backward', 'central'
% order: 'O(h)' hoặc 'O(h^2)'

switch method
    case 'Xấp xỉ tiến'
        if strcmp(order, 'O(h)')
            df = (f(x0 + h) - f(x0)) / h;
        elseif strcmp(order, 'O(h^2)')
            df = (-3*f(x0) + 4*f(x0+h) - f(x0+2*h)) / (2*h);
        end

    case 'Xấp xỉ lùi'
        if strcmp(order, 'O(h)')
            df = (f(x0) - f(x0 - h)) / h;
        elseif strcmp(order, 'O(h^2)')
            df = (3*f(x0) - 4*f(x0-h) + f(x0-2*h)) / (2*h);
        end

    case 'Xấp xỉ trung tâm'
        if strcmp(order, 'O(h^2)')
            df = (f(x0 + h) - f(x0 - h)) / (2*h);
        else
            error("Central chỉ hỗ trợ O(h^2).");
        end

    otherwise
        error("Sai phương pháp.");
end
end
