// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 29.11.2017
//
function DotToPar(p,X,Y)
    clf()
    t=[-2:0.1:2]
    x=t**2/(2*p)
    y=t
    plot(x,y)

    y=linspace(-1,1,30)
    x=y*Y/p
    plot(x,y,'r->')
endfunction
//0.36 -1.3
