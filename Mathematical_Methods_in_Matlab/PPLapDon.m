function [c1, n1]=PPLapDon(fx, fp, a, b, saiso)
         fx = str2func(['@(x)',fx]);
         fp = str2func(['@(x)',fp]);
            n1 = 0;
            c1 = (a+b)/2;

            if(fx(a)*fx(c1)<0)
                c0 = a;
            else
                c0 = b;
            end
            while(1)
                c1 = fp(c0);
                n1 = n1+1;
                e = abs(c1-c0);
                %ktra dieu kien
                if(e<saiso)
                    break;
                end
                %cap nhat c0 moi
                c0=c1;
            end

        end