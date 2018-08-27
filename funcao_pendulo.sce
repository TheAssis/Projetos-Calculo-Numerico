
function pendulo = funcao_pendulo(r1,r2,r3,w0,x,n)
        pendulo = (r1 + r2*cosseno_taylor(w0*x,n) + r3*seno_taylor(w0*x,n));
endfunction
