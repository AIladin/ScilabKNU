// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 28.10.2017
//
function a=parity(b)
    k=0
    b=string(b)
    for i=1:length(b)
        if part(b,[i])=='1'
            k=k+1
        end
    end
    if modulo(k,2)==0
        a=strcat([b,'0'])
    else
        a=strcat([b,'1'])
    end
endfunction
