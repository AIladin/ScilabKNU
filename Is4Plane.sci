// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function c=Dots2Vector(a,b)
    /*
    Функция образует вектор из точек
    
    точки задаются векторами их координат. Возвращает вектор координат вектора)
    */
    c=[b(1)-a(1),b(2)-a(2),b(3)-a(3)]
endfunction

function r=Is3OneLane(a,b,c)
    /*Функция которая проверяет принадлежность 3 точек одной прямой
    
    Точки задаются векторами их координат. Возвращает %t или %f   
    */
    if (a(1)-b(1))/(c(1)-b(1))==(a(2)-b(2))/(c(2)-b(2)) & (a(1)-b(1))/(c(1)-b(1))==(a(3)-b(3))/(c(3)-b(3))
        r=%t
    else r=%f
    end
endfunction

function r=Is4Plane(a,b,c,d)
    /*Функция определяющая принадлежность 4 точек одной плоскости
    
    точки задются векторами их координат функция возвращает значение %t или %f
    и выводит изобращение в размере -20:20х-20:20х-20:20. 
    
    */
    
   m=a
        n=b
        l=c
        T=d
    A=Dots2Vector(a,b)
        B=Dots2Vector(a,c)
        C=Dots2Vector(a,d)
    /*if  ~Is3OneLane(a,b,c)
        A=Dots2Vector(a,b)
        B=Dots2Vector(a,c)
        C=Dots2Vector(a,d)
        m=a
        n=b
        l=c
        T=d 
    end
     if ~Is3OneLane(a,b,d) 
        A=Dots2Vector(a,b)
        B=Dots2Vector(a,d)
        C=Dots2Vector(b,d)
        m=a
        n=b
        l=d
        T=c
    end
   if ~(b,c,d)
        A=Dots2Vector(c,b)
        B=Dots2Vector(d,c)
        C=Dots2Vector(b,d)
        m=d
        n=b
        l=c
        T=a
   end*/
    
       M=([A(1),A(2),A(3);B(1),B(2),B(3);C(1),C(2),C(3)])
    f=det(M)
    
    if f==0
        r=%t
    else
        r=%f
    end
    
    clf()
    
    param3d(T(1),T(2),T(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    param3d(m(1),m(2),m(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    param3d(n(1),n(2),n(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    param3d(l(1),l(2),l(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    param3d(-50,-50,-50)
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 0
    param3d(50,50,50)
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 0
   
endfunction
/*
 x=[-20,20]
    y=[-20,20]
deff('z=f(x,y)','z=(x-m(1))*det([n(2)-m(2),n(3)-m(3);l(2)-m(2),l(3)-m(3)])-(y-m(2))*det([(1)-m(1),n(3)-m(3);l(1)-m(1),l(3)-m(3)])/det([n(1)-m(1),n(2)-m(2);l(1)-m(1),l(2)-m(2)])+m(3)')
    clf()
    fplot3d(x,y,f,alpha=5,theta=31)
//z=(x-m(1))*det([n(2)-m(2),n(3)-m(3);l(2)-m(2),l(3)-m(3)])-(y-m(2))*det([(1)-m(1),n(3)-m(3);l(1)-m(1),l(3)-m(3)])/det([n(1)-m(1),n(2)-m(2);l(1)-m(1),l(2)-m(2)])+m(3)*/
