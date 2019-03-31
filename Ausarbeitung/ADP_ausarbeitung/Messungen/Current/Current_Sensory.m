Messung = [-100 -70 -50 -30 0 30 50 70 100];
U_ACS = [3.255 3.113 2.98 2.784 2.49 2.196 1.99 1.87 1.728];
U_IS = [0.61 0.49 0.42 0.33 0 0.27 0.39 0.49 0.585];

I_ACS = (U_ACS-2.49) / (40*10^-3);
I_IS = (U_IS / 500);

k = zeros(8);

for index = 1:8
     k(index) = (I_ACS(index+1) - I_ACS(index)) / (I_IS(index+1) - I_IS(index));
end

k