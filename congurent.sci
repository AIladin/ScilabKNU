// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 28.10.2017
//
function g=congurent(a,b,n)
    if modulo(b,evk(a,n))==0
        gg=%f
        i=-1
        k=0
        while %t
            i=1+i
            if modulo(a*i,n)==b
                k=k+1
                x=i
                break
            end 
        end
        g=strcat([string(x),'+',string(n),'*n;nєz'])
        
    else
        g='None'
    end
endfunction
