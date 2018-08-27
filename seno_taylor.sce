
function seno = seno_taylor(angulo, n)
    seno = 0;
    for i:1:n
        seno = seno + ((angulo)^(2*n + 1) / factorial(2*n +1));
    end
endfunction
