// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 28.10.2017
//
function b=ISBN_10(a)
    A(1)=int(a/1000000000)
    A(2)=modulo(int(a/100000000),10)
    A(3)=modulo(int(a/10000000),10)
    A(4)=modulo(int(a/1000000),10)
    A(5)=modulo(int(a/100000),10)
    A(6)=modulo(int(a/10000),10)
    A(7)=modulo(int(a/1000),10)
    A(8)=modulo(int(a/100),10)
    A(9)=modulo(int(a/10),10)
    A(10)=modulo(a,10)
    if modulo(10*A(1)+9*A(2)+8*A(3)+7*A(4)+6*A(5)+5*A(6)+4*A(7)+3*A(8)+2*A(9)+A(10),11)==0
        b=%t
    else 
        b=%f
    end
endfunction
