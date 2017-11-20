// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 15.11.2017
//


function Mandelbrot(Res,Maxlter,Recmin,Recmax,Imcmin,Imcmax)
     clf()
     a=(Recmax-Recmin)/Res
     A=[Recmin:a:Recmax]
     b=(Imcmax-Imcmin)/Res
     B=[Imcmin:b:Imcmax]//инициализация всех точек с шагом Res
     
     T=list(0)
     for i=1:length(A)
        clc()
        disp(i*100/length(A))//вывод текущего состояния генерации
     for j=1:length(B)
         c=complex(A(i),B(j))
         z=0
         t=Maxlter//если невозможно определить глубину то глубина максимальная
         for k=1:Maxlter
            z=z**2+c
            if abs(z)>2 //определение глубины точки
                t=k
                break
                
            end
         end
         
             
             T($+1)=[t,c]//добавление точки и ее глубины в список
     end
     
    end
    

    TT=list(T(1))//инициализация нового списка
    
    for i=1:length(T)
        clc()
        disp(i*100/length(T),'step2')
        b=%t
        for j=1:length(TT)
            if TT(j)(1)==T(i)(1) & i~=1//сортировка списка по глубине точки
                TT(j)($+1)=T(i)(2)
                b=%f
                break
            end
        end
        if b
                TT($+1)=T(i)
        end
    end
    TT(1)=null()
    TT(1)=null()//удаление первых двух элементов списка (они почему то нулевые но все точки присутствуют в последующих елементах списка?????)

    for i=1:length(TT)
        clc()
        disp(i*100/length(TT),'step3')
        r=(modulo(25*real(TT(i)(1)),256)/256)//подсчет текущего цвета в пределах [0:1]
       if r>1
           r=0
       end 
       if r<0
           r=0
       end
         b=(modulo(5*real(TT(i)(1)),256)/256)
       if b>1
           b=0
       end 
       if b<0
           b=0
       end  
         g=(modulo((255-25*real(TT(i)(1))),256)/256)
       if g>1
           g=0
       end 
       if g<0
           g=0
       end
          plot('nn',real(TT(i)(2:$)),imag(TT(i)(2:$)),'colo',[r,b,g],'linest','none','marker','.','markersize',2)
          plot('nn',real(TT(i)(2:$)),-imag(TT(i)(2:$)),'colo',[r,b,g],'linest','none','marker','.','markersize',2)//вывод изображения симметрично ox
    end
     
    
        
 
endfunction
