function y = Simpsonmotba(fx,a,b,N)
            fx = str2func(['@(x)',fx]);
            h = (b-a)/N;
            y = (fx(a)+fx(b));
            for i=1:2:N-1
                y = y+4*fx(a+i*h);
        end
            for i=2:2:N-1
                y = y+2*fx(a+i*h);
        end
        y = y*h/3;
    end