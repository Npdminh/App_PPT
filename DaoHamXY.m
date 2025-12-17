function df = DaoHamXY(x, y, x0, method, order)
    h = x(2) - x(1);
    [~, i] = min(abs(x - x0));

    switch method
        case 'Xấp xỉ tiến'
            if strcmp(order,'O(h)')
                df = (y(i+1) - y(i)) / h;
            else
                df = (-3*y(i) + 4*y(i+1) - y(i+2)) / (2*h);
            end

        case 'Xấp xỉ lùi'
            if strcmp(order,'O(h)')
                df = (y(i) - y(i-1)) / h;
            else
                df = (3*y(i) - 4*y(i-1) + y(i-2)) / (2*h);
            end

        case 'Xấp xỉ trung tâm'
            df = (y(i+1) - y(i-1)) / (2*h);
    end
end
