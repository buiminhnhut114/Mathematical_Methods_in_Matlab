function result = PPNoiSuyLagrange(xa, ya, x)
    n = length(xa) - 1;
    totalSum = 0;
    for i = 1:n+1
        product = 1;
        for j = 1:n+1
            if j ~= i
product = product .* (x - xa(j)) ./ (xa(i) - xa(j));
            end
        end
        totalSum = totalSum + ya(i) * product;
    end
    result = totalSum;
end