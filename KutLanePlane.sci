// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function r=KutLanePlane(A,B,C,D,x0,y0,z0,l,m,n)
    /*Функция определяет угол между прямой и плоскостью
    
    входные данные сначала коофициенты плоскости потом прямой
    */
    x=[-20,20]
    y=x
    r=sin(abs(A*l+B*m+C*n)/sqrt((A**2+B**2+C**2)*(l**2+m**2+n**2)))
    deff('z=f(x,y)','z=(A*x+B*y+D)/C')
    clf()
    fplot3d(x,y,f,alpha=5,theta=31)
    t=[-20,20]
    x=x0+l*t
    y=y0+m*t
    z=z0+n*t
    param3d(x,y,z)
endfunction
