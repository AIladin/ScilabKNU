// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 28.10.2017
//
function x=evk(a,b)
   x=min(a,b)
  
   while modulo(a,b)~=0
    x=modulo(a,b)
    a=b
    b=x
    
   end 
   
endfunction
