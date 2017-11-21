// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function r=Kut2Plane(A,B,C,D,A1,B1,C1,D1)
    /*Функция определяет угол между плоскостями и выводит плоскости
    
    входные данные коофициенты первой а затем второй плоскости     
    */
    
    r=cos((A*A1+B*B1+C*C1)/sqrt((A**2+B**2+C**2)*(A1**2+B1**2+C1**2)))
    clf()
    x=[-20,20]
    y=x
    
    deff('z=f(x,y)','z=(A*x+B*y+D)/C')
    fplot3d(x,y,f,alpha=5,theta=31)
    deff('z=f(x,y)','z=(A1*x+B1*y+D1)/C1')
    fplot3d(x,y,f,alpha=31,theta=5)
   

    
   
endfunction
