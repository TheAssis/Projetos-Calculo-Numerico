function erroRelativo = erroRelativoEntreMMQETaylor(anguloMMQ, anguloTaylor)
    erroRelativo = abs((anguloMMQ - anguloTaylor)/anguloMMQ)*100;
endfunction

t = [00 106 305 644 745 815 1020 1393];
ang = [1.530320 1.752424 1.975001 1.600777 1.411812 1.284921 1.088641 1.604046];
p = 1393;
[w0,r] = coeficientes (t, ang, p);
tn = min(t):1:max(t);
anguloMMQ = r(1)+r(2)*cos(w0*tn)+r(3)*sin(w0*tn);
disp(abs(anguloMMQ));
angulosTaylor = [1.0921453 1.060427 1.6841051 1.5631766]
disp("Erro relativo com 1, 2, 3 e 50 termos para a série de taylor que aproxima o angulo, respectivamente em porcentagem.");
for i=1:1:length(angulosTaylor)
    erro = erroRelativoEntreMMQETaylor(anguloMMQ, angulosTaylor(i));
    disp(erro);
end
