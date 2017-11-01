// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 25.10.2017
//
function b=ToBin(a)
    if a==0
        b='0'
    
    
        else
        k=0
        b=''
        while a~=1 
            k=k+1
            b=string(modulo(a,2))+b
            a=int(a/2)
        end
        b='1'+b
    end
endfunction
