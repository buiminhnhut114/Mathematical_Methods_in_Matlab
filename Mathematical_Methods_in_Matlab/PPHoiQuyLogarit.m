function [A0,A1,y_predict] = PPHoiQuyLogarit(x,y,x_predict)
            Y = log10(y);
            X = [ones(length(x), 1), log10(x)'];
            coefficients = X\Y';
            A0 = coefficients(1);
            A1 = coefficients(2);
            y_predict = 10^(A0)*x_predict^(A1);
        end