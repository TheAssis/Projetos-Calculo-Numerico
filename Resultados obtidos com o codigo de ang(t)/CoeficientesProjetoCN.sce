function [w0​, r​] = coeficientes(t​, ang​, p​) //vetores de tempo e angulo, e o período

 n=length(t​); //numero de elementos em t

 w0​=2*%pi/p​; // frequencia em radianos

 A=[n sum(cos(w0​*t​)) sum(sin(w0​*t​));

 sum(cos(w0​*t​)) sum(cos(w0​*t​).*cos(w0​*t​)) sum(cos(w0​*t​).*sin(w0​*t​));

 sum(sin(w0​*t​)) sum(cos(w0​*t​).*sin(w0​*t​)) sum(sin(w0​*t​).*sin(w0​*t​))];

 B=[sum(ang​); sum(ang​.*cos(w0​*t​)); sum(ang​.*sin(w0​*t​));];

 r​=inv(A)*B;

endfunction

 t=[00 106 305 644 745 815 1020 1393];//tempo de cada imagem

 ang=[1.530320 1.752424 1.975001 1.600777 1.411812 1.284921 1.088641 1.604046]; //ângulos de cada imagem, respectivamente;

 p = 1393; //período ou tempo para uma volta completa

[w0,r]=coeficientes(t,ang,p);

disp(w0, "w0= ");

disp(r, "r= ");

figure

 plot(t,ang,'.');

 tn=min(t):0.001:max(t);

 angn=r(1)+r(2)*cos(w0*tn)+r(3)*sin(w0*tn);

 plot(tn,angn,'k');

xgrid;
