// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 18.10.2017
// HW 6 1.2
function y=S_triangle(x1,y1,z1,x2,y2,z2,x3,y3,z3)
    y=1/2*sqrt(det([y2-y1,z2-z1;y3-y1,z3-z1])^2+det([x2-x1,z2-z1;z3-x1,z3-z1])^2+det([x2-x1,y2-y1;x3-x1,y3-y1])^2)
endfunction
