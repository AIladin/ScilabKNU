// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 31.10.2017
//
function [ro,phi]=SqwareToPolar(x,y)
    ro=sqrt(x**2+y**2)
    phi=atan(y/x)
endfunction
