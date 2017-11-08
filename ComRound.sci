// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 08.11.2017
//
function ComRound(xstep,ystep,deg,n)
    clf()
    k=0
    A=[]
    B=[]
    for i=-10:xstep:0
        for j=-10:ystep:0
            if modulo(round(abs((i)+j*%i)**deg),n)==0
               k=k+1
               A(k)=[i]//так как даные рисунки симметричны относительно нуля просчет сразу 8 точек
               B(k)=[j]
               k=k+1
               A(k)=[-i]
               B(k)=[-j]
               k=k+1
               A(k)=[i]
               B(k)=[-j]
               k=k+1
               A(k)=[-i]
               B(k)=[j]
               k=k+1
               A(k)=[i+10]
               B(k)=[j+10]
               k=k+1
               A(k)=[-i-10]
               B(k)=[-j-10]
               k=k+1
               A(k)=[i+10]
               B(k)=[-j-10]
               k=k+1
               A(k)=[-i-10]
               B(k)=[j+10]
               
               
                
            end
        end 
    end
    plot(A,B,'r.')//вывод графика
    
endfunction
