% function dx1 = DaoHam1(xi, yi, x, h, pp, ss)
% [~, a] = min(abs(xi - x));
% if pp == "Tiến"
%     dx1 = (yi(a + 1) - yi(a)) / h;
% elseif pp == "Lùi"
%     dx1 = (yi(a) - yi(a - 1)) / h;
% else
%     dx1 = (yi(a + 1) - yi(a - 1)) / (2 * h);
% end
% if ss == "O(h^2)"
%     if pp == "Tiến"
%         dx1 = (4 * yi(a + 1) - 3 * yi(a) - yi(a + 2)) / (2 * h);
%     elseif pp == "Lùi"
%         dx1 = (3 * yi(a) - 4 * yi(a - 1) + yi(a - 2)) / (2 * h);
%     else
%         dx1 = (yi(a + 1) - yi(a - 1)) / (2 * h);
%     end
% end
% end

function dx1 = DaoHam1(xi, yi, x, h, pp, ss)
[~, a] = min(abs(xi - x));
if pp == "Tiến"
    dx1 = (yi(min(a + 1, length(yi))) - yi(a)) / h;
elseif pp == "Lùi"
    dx1 = (yi(a) - yi(max(a - 1, 1))) / h;
else
    dx1 = (yi(min(a + 1, length(yi))) - yi(max(a - 1, 1))) / (2 * h);
end
if ss == "O(h^2)"
    if pp == "Tiến" && a <= length(yi) - 2
        dx1 = (4 * yi(min(a + 1, length(yi))) - 3 * yi(a) - yi(min(a + 2, length(yi)))) / (2 * h);
    elseif pp == "Lùi" && a >= 3
        dx1 = (3 * yi(a) - 4 * yi(max(a - 1, 1)) + yi(max(a - 2, 1))) / (2 * h);
    else
        dx1 = (yi(min(a + 1, length(yi))) - yi(max(a - 1, 1))) / (2 * h);
    end
end
end

