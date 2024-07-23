function result = NS_NEWTON(xa, ya, x)
    d = DividedDifference(xa, ya);
    result = NewtonForm(xa, d, x);
end

function result = NewtonForm(xa, da, x)
    n = length(da);
    result = da(n);
    for i = n-1:-1:1
        result = result .* (x - xa(i)) + da(i);
    end
end

function d = DividedDifference(xa, ya)
    n = length(xa);
    d = ya;
    for i = 2:n
        for j = n:-1:i
            d(j) = (d(j) - d(j-1)) / (xa(j) - xa(j-i+1));
        end
    end
end
