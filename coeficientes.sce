
function [w0​, r​] = coeficientes(t​, ang​, p​) //vetores de tempo e angulo, e o período
 n=length(t​); //numero de elementos em t
 w0​=2*%pi/p​; // frequencia em radianos
 A=[n sum(cos(w0​*t​)) sum(sin(w0​*t​));
 sum(cos(w0​*t​)) sum(cos(w0​*t​).*cos(w0​*t​)) sum(cos(w0​*t​).*sin(w0​*t​));
 sum(sin(w0​*t​)) sum(cos(w0​*t​).*sin(w0​*t​)) sum(sin(w0​*t​).*sin(w0​*t​))];
 B=[sum(ang​); sum(ang​.*cos(w0​*t​)); sum(ang​.*sin(w0​*t​));];
 r​=inv(A)*B;
endfunction
 t=[0 1 2 3 4 5 6 7];//tempo de cada imagem
 ang=[ 2.5173199 0.4942503 1.5117741 2.6951518 0.8224183 ...]; //ângulos de cada imagem, respectivamente;
 p= 3; //período ou tempo para uma volta completa
[w0,r]=coeficientes(t,ang,p);
disp(w0, "w0= ");
disp(r, "r= ");
figure
 plot(t,ang,'.');
 tn=min(t):0.001:max(t);
 angn=r(1)+r(2)*cos(w0*tn)+r(3)*sin(w0*tn);
 plot(tn,angn,'k');
xgrid;
