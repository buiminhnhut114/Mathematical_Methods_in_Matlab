function  [A0, A1, y_predict] = PPHoiQuyMuE(x, y, x_predict)
                Y = log(y);
                X = [ones(length(x), 1), x']
                coefficients = X\Y'
                A0 = coefficients(1);
                A1 = coefficients(2);
                y_predict = exp(A0 + A1 * x_predict);
        end