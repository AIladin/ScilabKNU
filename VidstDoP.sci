// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function d=VidstDoP(a,A,B,C,D)
    /*Функция определяет расстояние от точки до плоскости и выводит изображение
    
    входные данные сначала вектор кордиат точки потом коофициенты уравнения плоскости
    */
    x=[-20,20]
    y=x
    deff('z=f(x,y)','z=(A*x+B*y+D)/C')
    clf()
    fplot3d(x,y,f,alpha=5,theta=31)
    d=abs(A*a(1)+B*a(2)+C*a(3)+D)/sqrt(A**2+B**2+C**2)
     param3d(a(1),a(2),a(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    
endfunction
