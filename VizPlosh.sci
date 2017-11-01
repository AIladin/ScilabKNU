// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 31.10.2017
//
function VizPlosh(a,b)
    x=[-100:100]
    y=[-100:100]
    z1=-(a(1)*x+a(2)*y+a(4))/a(3)
    z2=-(b(1)*x+b(2)*y+b(4))/b(3)
    plot3d(x,y,z1)
    plot3d(x,y,z2)
endfunction
