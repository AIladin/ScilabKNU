// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 29.11.2017
//
function DotToHip(a,b,X,Y)
    clf()
    t=[-1:0.01:1]
    x=a*cosh(t)
    y=b*sinh(t)
    plot(x,y)
    plot(-x,y)

    y=linspace(-1,1,30)
    x=(1+y*Y/b**2)*a**2/X
    plot(x,y,'r->')
endfunction
