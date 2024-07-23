function x = GiaiHePTLapDon(A, b, epsilon, max_iter)
    % Kích th??c c?a ma tr?n A
    n = size(A, 1);

    % Kh?i t?o vector x ban ??u
    x = zeros(n, 1);

    % L?p ??n khi ??t sai s? ho?c ??t s? l?n l?p t?i ?a
    for k = 1:max_iter
        x_new = x;
        for i = 1:n
            sum1 = 0;
            for j = 1:n
                if j ~= i
                    sum1 = sum1 + A(i, j) * x(j);
                end
            end
            x_new(i) = (b(i) - sum1) / A(i, i);
            if k == max_iter
                x_new = 'Khong hoi tu';
                break;
            end
        end

        % Tính sai s?
        error = norm(x_new - x, inf);

        % Ki?m tra ?i?u ki?n d?ng
        if error < epsilon
            break;
        end

        x = x_new;
    end
end
