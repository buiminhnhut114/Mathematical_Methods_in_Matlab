function y = TichPhanHinhThang(fx,a,b,N)
            fx = str2func(['@(x)',fx]);
            h = (b-a)/N;
            y = (fx(a)+fx(b))/2;
            for i=1:N-1
              y = y+fx(a+i*h);
            end
            y = y*h;
        end