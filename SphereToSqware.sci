// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 31.10.2017
//
function [x,y,z]=SphereToSqware(ro,phi,teta)
    x=ro*sin(teta)*cos(phi)
    y=ro*sin(teta)*sin(phi)
    z=ro*cos(teta)
endfunction
