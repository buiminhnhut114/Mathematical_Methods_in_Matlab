
function result = TichPhanHinhThangXY (x,y,a,b)
            index_a = find(x>=a,1);
            index_b = find(x<=b,1,'last');
            x_selected = x(index_a:index_b);
            y_selected = y(index_a:index_b);           
            N_selected = length(x_selected) - 1;
            h = (x_selected(end) - x_selected(1)) / N_selected;           
            fa = y_selected(1);
            fb = y_selected(end);           
            sum_inside = sum(y_selected(2:end-1));            
            result = (h / 2) * (fa + 2 * sum_inside + fb);
end