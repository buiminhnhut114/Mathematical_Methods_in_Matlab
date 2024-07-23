function [c2,n2]=PPNewton(fx, a, b, saiso)
     fx = str2func(['@(x)',fx]);
     syms c2_sym;
     n2 = 0;
     c2 = (a+b)/2;
     if(fx(a)*fx(c2) < 0)
         c2 = a;
     else
         c2 = b;
     end
     while(1)
         df = diff(fx(c2_sym));
         df_func = matlabFunction(df, 'Vars', c2_sym);
         z = fx(c2) / df_func(c2);
         y = c2-z;
         if abs(y - c2) < saiso || n2 > 500
             break;
         end
         c2 = y;
         n2 = n2 + 1;
     end
 end