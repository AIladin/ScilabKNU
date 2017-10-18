// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 18.10.2017
//HW6 2.2
function y=IsComplanar(a,b,c)
    y=det([a(1),a(2),a(3); b(1),b(2),b(3); c(1),c(2),c(3)])==0;
endfunction

