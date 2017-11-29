// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 28.11.2017
//
function VizHip(a,b)
    t=[-2:0.1:2]
    x=a*cosh(t)
    y=b*sinh(t)
    x1=-x
    plot(x,y)
    plot(x1,y)
endfunction
