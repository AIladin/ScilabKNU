// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 31.10.2017
//
function lemBer(a)
    
    fi=[-%pi/4:0.01:%pi/4]
    fi=cat(2,fi,fi)
    p=(sqrt(cos(2*fi)*2*a**2))
    p1=-p
    polarplot(fi,p)
    polarplot(fi,p1)
endfunction
