// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 30.11.2017
//
function r=IzCrat(c)
    /*Функция проверяющая наличие кратных кофициентов
    
    на ввод принимает вектор коофициентов от a0 до an.
    Возвращет %t или %f
    */
    t=poly(c,'x','coeff')
    t1=derivat(t)
    r=%f
    if gcd([t,t1])~=1
    r=%t
    end
endfunction
