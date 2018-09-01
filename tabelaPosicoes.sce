clc

C_x = [485 490 545 611 606 596 567 546] // x do Centro
C_y = [308 312 315 335 351 352 343 344] // y do Centro

P_x = [524 317 169 582 758 867 1004 515] // x do movimento pendular
P_y = [1271 1254 1194 1302 1299 1274 1178 1276] // y do movimento pendular

tmps = [0 106 305 644 745 815 1020 1393] // tempos do movimento

T_degC = [-40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100];
T_K = T_degC + 273.15;
T_degF = T_degC * (9/5) + 32;

mprintf("\nTempos(ms)\t  Centro\t Pendulo\n");
for i=1:length(tmps)
 mprintf("%d \t\t <%d,%d> \t <%d,%d> \n", tmps(i), C_x(i),C_y(i),P_x(i),P_y(i));
end

mprintf("Centro_medio =  <%d,%d>", mean(C_x), mean(C_y))
