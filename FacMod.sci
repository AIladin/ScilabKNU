// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 25.10.2017
//
function a=FacMod(x,b)
    if x>b
        a=0
    else
        a=1
        for i=1:x
            a=modulo(a*i,b)
        if a==0
            break
        end
        end
    end
endfunction
