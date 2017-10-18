// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 18.10.2017
//HW6_1
function  y=VectDob(x1,x2,x3,y1,y2,y3)
    y=[0,0,0]
    y(1)=det([x2,x3;y2,y3])
    y(2)=-det([x1,x3;y1,y3])
    y(3)=det([x1,x2;y1,y2])
endfunction
