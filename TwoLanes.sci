// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 31.10.2017
//
function [x,y,phi]=TwoLanes(a,b)
    phi=acos((a(1)*b(1)+a(2)*b(2))/sqrt((a(1)**2+a(2)**2)*(b(1)**2+b(2)**2)))
    X1=[-100:100]
    X2=[-100:100]
    Y1=-(a(1)*X1+a(3))/a(2)
    Y2=-(b(1)*X1+b(3))/b(2)
    plot(X1,Y1,X2,Y2)
    if phi==0 
        disp(phi)
        abort
    else
        y=(b(1)/a(1)*a(3)-b(3))/(b(2)-a(2)*b(1)/a(1))
        x=-(a(2)*y+a(3))/a(1)
    end
   
    
endfunction
