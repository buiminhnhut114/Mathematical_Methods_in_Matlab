function [c3,n3]=PPdaycung(fx, a, b, saiso)
   fx = str2func(['@(x)',fx]);
  
    n3 = 0 ;
    while(1)
        n3 = n3+1;
        c3 = (a*fx(b)-b*fx(a))/(fx(b)-fx(a));
        fafc3 = fx(a)*fx(b);
        if abs(fx(c3)) < saiso
            a = c3;
            break;
        end
        if(fx(c3)*fx(a) < 0 && fx(b) ~=fx(a))
            b = c3;
        else
            a = c3;
        end
        e = abs(b-a);
        if(e<saiso)
            break;
        end
    end
end