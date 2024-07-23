function N = TimN(fx, a, b, epsilon)
    N = 2; % B?t ??u v?i N = 2
    current_error = Inf; % Kh?i t?o sai s? v?i giá tr? l?n

    % Convert the string expression to a function handle
    fx_function = str2func(['@(x)', fx]);

    while current_error > epsilon
        % Tính tích phân b?ng công th?c Simpson v?i giá tr? N hi?n t?i
        result_current = TichPhanSimpson(fx_function, a, b, N);

        % Tính tích phân b?ng công th?c Simpson v?i giá tr? N g?p ?ôi
        result_double_N = TichPhanSimpson(fx_function, a, b, 2 * N);

        % Tính sai s?
        current_error = abs(result_double_N - result_current) / 15;

        % T?ng giá tr? c?a N
        N = N * 2;
    end
end
