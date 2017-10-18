// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 18.10.2017
//HW 6 2.3
function y=Is4DotsInOnePlane(x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4)
    a(1)=x2-x1
    a(2)=x3-x1
    a(3)=x4-x1
    b(1)=y2-y1
    b(2)=y3-y1
    b(3)=y4-y1
    c(1)=z2-z1
    c(2)=z3-z1
    c(3)=z4-z1
    y=det([a(1),a(2),a(3); b(1),b(2),b(3); c(1),c(2),c(3)])==0;
endfunction

