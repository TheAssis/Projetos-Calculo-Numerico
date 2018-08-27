function [a] = aproximacaoTaylor(t0, numTermos, t)
    //a = angulo que desejamos encontrar.
    w0 = 0.0045105; //velocidade angular
    r = [1.5328254 0.0303771 0.4400359]; //valores dos coeficientes calculados anteriormente por MMQ
    
    a = r(1) +  r(2)*cos(w0*t0) + r(3)*sin(w0*t0); //queremos começar a série de taylor a partir de um t0.
    
    for i = 2:1:numTermos//começamos com o segundo termo pois o primeiro foi calculado acima.
        //como as derivadas de funcoes trigonometricas se repetem, faremos quatro if's
        //esses if's corresponderao a derivada de ordem superior correspondente.
        //como elas são ciclicas, toda derivada de ordem>4 é igual a uma das 4 primeiras.
        if modulo(i,4) == 2//primeira derivada vai aqui
            a = a + ( -(w0^(i-1))*r(2)*sin(w0*t0) + (w0^(i-1))*r(3)*cos(w0*t0) )*(t-t0)^(i-1) / factorial(i-1); 
        elseif modulo(i,4) == 3//segunda derivada vai aqui
            a = a + ( -(w0^(i-1))*r(2)*cos(w0*t0) -(w0^(i-1))*r(3)*sin(w0*t0) )*(t-t0)^(i-1) / factorial(i-1);
        elseif modulo(i,4) == 0//terceira derivada vem aqui
            a = a + ( (w0^(i-1))*r(2)*sin(w0*t0) -(w0^(i-1))*r(3)*cos(w0*t0) )*(t-t0)^(i-1) / factorial(i-1);
        else//quarta derivada vem aqui
            a = a + ( (w0^(i-1))*r(2)*cos(w0*t0) + (w0^(i-1))*r(3)*sin(w0*t0) )*(t-t0)^(i-1) / factorial(i-1);
        end
        
        disp(a, "\n");
    end
    
endfunction
