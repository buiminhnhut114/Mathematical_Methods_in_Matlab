function [c, n] = PPChiaDoi(fx, a, b, saiso)
            %gia su fx la string
    fx = str2func(['@(x)',fx]);
    n = 0 ;
    while(1)
        c = (a+b)/2;
        if(fx(a)*fx(c)<0)
            b = c;
        else
            a = c;
        end
        %dem so lan lap
        n = n+1;
        %dieu kien de thoat vong lap
        e = abs(b-a);
        if(e< saiso)
            break;
        end
            end
        end