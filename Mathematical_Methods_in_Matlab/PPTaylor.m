function dftt = PPTaylor(x,y,point)
            l = find(x==point);
            h = x(l) - x(l-1);
            if (l - 2 >= 0) && (l+2<=length(x))
                dftt = (-y(l+2)+8*y(l+1)-8*y(l-1)+y(l-2))/(12*h);
            elseif (l+2 > length(x))
                dftt = (3*y(l)-4*y(l-1)+y(l-2))/(2*h);
            elseif l - 2 < 0
                dftt = (-y(l+2)+4*y(l+1)-3*y(l))/(2*h);
            end
        end