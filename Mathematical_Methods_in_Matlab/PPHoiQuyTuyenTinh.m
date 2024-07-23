function [a0, a1, y_predict] = PPHoiQuyTuyenTinh(x, y, x_predict)
    n = length(x);
    sumxy = 0;
    sumx = 0;
    sumy = 0;
    sumx2 = 0;
    st = 0;
    sr = 0;
    r2 = 0;
    for i = 1:1:n
        sumxy = sumxy + x(i)*y(i);
        sumx = sumx + x(i);
        sumy = sumy + y(i);
        sumx2 = sumx2 + x(i)^2;
    end
    a1 = (n * sumxy - sumx * sumy)/(n * sumx2 - (sumx)^2);
    a0 = mean(y) - a1 * mean(x);    
    y_predict = a1 * x_predict + a0;
end