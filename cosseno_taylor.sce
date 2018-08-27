
function cosseno = cosseno_taylor(angulo, n)
    cosseno = 0;
    for i:1:n
        cosseno = cosseno + ((angulo^(2*n) / factorial(2*n));
    end
endfunction
