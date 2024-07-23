function [dxy] = DaoHamXY(xi, yi, x, pp, ss)
    h = xi(2) - xi(1);
    a = (x - xi(1)) / h + 1;
    a = cast(a, 'uint16');
    disp(a);
    if pp == "TrungTam"
            dxy = (yi(a + 1) - yi(a - 1)) / (2 * h);
    elseif pp == "Tien"
        if ss == "O(h^2)"
            dxy = (4 * yi(a + 1) - yi(a + 2) - 3 * yi(a)) / (2 * h);
        elseif ss == "O(h)"
            dxy = (yi(a + 1) - yi(a))/h;
        end
    else
        if ss == "O(h^2)"
            dxy = (-4 * yi(a - 1) + yi(a - 2) + 3 * yi(a)) / (2 * h);
        elseif ss == "O(h)"
            dxy = (yi(a) - yi(a - 1))/h;
        end
    end
end