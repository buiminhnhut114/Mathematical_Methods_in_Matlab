function results = VeHinhHoiQuy(app,y_fit,y_predict,print)
            x1 = app.NhapX.Value;
            x_array = strsplit(x1, ' ');
            x = str2double(x_array);
            y1 = app.NhapY.Value;
            y_array = strsplit(y1, ' ');
            y = str2double(y_array);
            x_predict_1 = app.Giatridudoan.Value;
            x_predict = str2double(x_predict_1);
            plot(app.UIAxes2, x, y , 'ro', x, y_fit, 'b-', 'LineWidth', 1);
            legend(app.UIAxes2, 'Dữ liệu thực', 'Hàm hồi quy');
            app.KetQuaDuDoan.Value = num2str(y_predict);
            app.PhuongTrinhHoiQuy.Value = print;
        end