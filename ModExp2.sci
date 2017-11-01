// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 25.10.2017
//
function b=ModExp2(a,e,n)
    e=ToBin(e)
    
    x=modulo(a,n)
    lish=[x]
    g=%f
    klish=1
    while ~g
        klish=klish+1
        x=modulo(x*a,n)
        
        for i=1:length(lish)
            if x==lish(i)
                g=%t
                break
            end
        end
        lish(klish)=x
   end
   klish=klish-1
    dva=[]
    
    k=0
    for i=length(e):-1:1
        if part(e,i)=='1'
            k=k+1
            dva(k)=2**(length(e)-i)
            
        end
    end
    b=1
    dva=modulo(dva,klish)
    
    for i=1:length(dva)
       b=b*lish(dva(i))
        
    end
    
    b=modulo(b,n)
endfunction
