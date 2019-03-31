next = 2;

if next == 0
    matDatei1 = shift_to_Neutral_090; %85 - 95
elseif next == 1
    matDatei1 = Shift_to_1st_Gear_012;
elseif next == 2
    matDatei1 = Shift_to_2nd_Gear_078; %75 - 78
end

X1 = matDatei1.X.Data;
Y1 = matDatei1.Y(1).Data;
Y1_df = matDatei1.Y(2).Data;
% Y1_2 = double(Y1_df) - 100;
% Y1_3 = matDatei1.Y(3).Data;
% Y1_3 = double(Y1_3) - 100;
% X2 = matDatei2.X.Data;
% Y2 = matDatei2.Y.Data;
% X3 = matDatei3.X.Data;
% Y3 = matDatei3.Y.Data;

Y_d1 = double(Y1);
Y_d1 = Y_d1 / 1000.0;
Y1_df = double(Y1_df) - 100;
% Y_d2 = double(Y2);
% Y_d2 = Y_d2 / 1000.0;
% Y_d3 = double(Y3);
% Y_d3 = Y_d3 / 1000.0;

%gätten
%iN = 20;
%Y_d_filt = filter(ones(1,iN)/iN, 1, Y_d);

figure
subplot(2,1,1)
plot(X1,Y_d1)
xlabel('Zeit [s]')
ylabel('Position [mm]')
axis([0 0.5 0 20])

if next == 0
    hline = refline([0 8.6]);
    hline = refline([0 8.65]);
    hline = refline([0 8.55]);
    title('Position [mm] to Neutral Position')
elseif next == 1
    hline = refline([0 0.6]);
    hline = refline([0 0.55]);
    hline = refline([0 0.65]);
    title('Position [mm] to 1st Gear')
elseif next == 2
    hline = refline([0 18.6]);
    hline = refline([0 18.55]);
    hline = refline([0 18.65]);
    title('Position [mm] to 2nd Gear')
end

hline.Color = 'r';
grid on

  subplot(2,1,2)
 plot(X1,Y1_df)
 title('Stellgröße in PWM [%]')
 axis([0 0.5 -100 100])
 grid on
% 
% subplot(3,1,3)
% plot(X1,Y1_3)
% title('Stellgroesse in PWM [%]')
% axis([0 0.5 -80 80])
% grid on

% title('Schaltvorgang in 2nd')
% xlabel('Zeit [s]')
% ylabel('Position [mm]')
% axis([0 0.5 0 18])
% hline = refline([0 16.97]);
% hline.Color = 'r';
% 
% subplot(3,1,3)
% plot(X3,Y_d3)
% title('Schaltvorgang in 1st')
% xlabel('Zeit [s]')
% ylabel('Position [mm]')
% axis([0 0.5 0 18])
% hline = refline([0 0.0]);
% hline.Color = 'r';
