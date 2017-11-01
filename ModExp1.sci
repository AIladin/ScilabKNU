// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 25.10.2017
//
function b=ModExp1(a,e,n)
    b=modulo(a,n)
    for i=2:e
        b=modulo(b*a,n)
    end
endfunction
