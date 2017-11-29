// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 29.11.2017
//
function DotToEl(a,b,X,Y)
    clf()
    t=[0:0.01:2*%pi]
    x=a*cos(t)
    y=b*sin(t)
    plot(x,y)

    y=linspace(-1,1,30)
    x=(1-y*Y/b**2)*a**2/X
    plot(x,y,'r->')
endfunction
