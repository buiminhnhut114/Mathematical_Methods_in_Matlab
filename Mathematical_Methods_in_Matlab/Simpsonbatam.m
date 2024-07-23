function y = Simpsonbatam(fx,a,b,N)
        fx = str2func(['@(x)',fx]);
        h = (b - a) / N;

        sum_1 = 0;
        sum_2 = 0;
        sum_3 = 0;

        for i = 1:N
            xi = a + i * h;
            if mod(i, 3) == 1
                sum_1 = sum_1 + fx(xi);
            elseif mod(i, 3) == 2
                sum_2 = sum_2 + fx(xi);
            else
                sum_3 = sum_3 + fx(xi);
            end
        end
    y = (3*h/8*(fx(a) + 3*sum_1 + 3*sum_2 + 2*sum_3 + fx(b)));
    end