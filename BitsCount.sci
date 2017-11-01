// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 25.10.2017
//
function k=BitsCount(a,b)
    a=ToBin(a)
    b=ToBin(b)
    if length(a)<length(b) 
        z=a
        a=b
        b=z
    end
    while length(b)<length(a)
        b='0'+b
    end
    k=0
    for i=1:length(a)
        if part(a,i)~=part(b,i)
            k=k+1
        end
    end
endfunction
