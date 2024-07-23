function [approximation, n] = TichPhanHinhThang(fx, a, b, epsilon)
    n = 1;  % S? l??ng ?o?n ban ??u
    h = (b - a) / n;
    approximation = 0;
    old_approximation = 0;

    while true
        y = (fx(a) + fx(b)) / 2;
        for i = 1:n-1
            x_i = a + i * h;
            y = y + fx(x_i);
        end
        approximation = y * h;

        % Ki?m tra sai s?
        if abs(approximation - old_approximation) < epsilon
            break;
        end

        old_approximation = approximation;
        n = n + 1;
        h = (b - a) / n;
    end
end

