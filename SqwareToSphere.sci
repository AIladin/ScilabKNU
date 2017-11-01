// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 31.10.2017
//
function [ro,phi,teta]=SqwareToSphere(x,y,z)
    ro=sqrt(x**2+y**2+z**2)
    phi=atan(x/y)
    teta=acos(z/ro)
endfunction
