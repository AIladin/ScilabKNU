// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 28.10.2017
//
function g=psirand(k)
    t=getdate()
    a=22695477
    b=1
    n=2**32
    g=[int(t(10)),0]

    for i=2:k
        t=g(i-1)*a+modulo(n,b)
        while t>10**8
        t=int(t/10)
        end
        g(i)=t
    end
   g=int(strtod(part(string(g),[3])))
endfunction
