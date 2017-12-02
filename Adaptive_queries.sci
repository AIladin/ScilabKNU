// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 02.12.2017
// 
function r=Adaptive_queries()
    /* Функция реализующая игру в отгадывание многочлена с компьютером
    
    
    */
    a=[]
    p=input('значение данного многочлена в х==1:')
    N=p+1
    y0=input('значение в х=='+string(N)+':')
    while y0~=0
        t=modulo(y0,N)
        y0=(y0-t)/N
        a(length(a)+1)=t 
    end
    r=poly(a,'x','coeff')
endfunction
