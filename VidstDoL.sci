// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function d=VidstDoL(a,x0,y0,z0,l,m,n)
    /*Фунуция определяет расстояние от точки до прямой
    
    ввод сначала вектор координат точки потом коофициенты парам. урав-я прямой
    */
    clc()
    t=(l*a(1)-l*x0+m*a(2)-m*y0+n*a(3)-n*z0)/(l**2+m**2+n**2)
    x=x0+l*t
    y=y0+m*t
    z=z0+n*t
    d=sqrt((x-a(1))**2+(y-a(2))**2+(z-a(3))**2)
    t=[-20,20]
    x=x0+l*t
    y=y0+m*t
    z=z0+n*t
    param3d(x,y,z)
     param3d(a(1),a(2),a(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
endfunction
