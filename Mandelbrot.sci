// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 15.11.2017
//
function Mandelbrot(Res,Maxlter,Recmin,Recmax,Imcmin,Imcmax)
     clf()
     a=(Recmax-Recmin)/Res
     A=[Recmin:a:Recmax]
     b=(Imcmax-Imcmin)/Res
     B=[Imcmin:b:Imcmax]
     c=complex(A,B)//создание ветрока комплексных чисел в заданных пределах

     for i=1:length(c)
         clc()
         disp(100,':',i*100/length(c))//отображение состояния выполнения
         C=[]//инициация вектра точек
         k=0//счетчик для вектора точек
         z=c(i)
         if sqrt(real(z)**2+imag(z)**2)<=2
                k=k+1
                C(k)=z//простчет перого елемента
            end
         for j=1:Maxlter
         z=z**2+c(i)
            if sqrt(real(z)**2+imag(z)**2)<=2
                k=k+1
                C(k)=z//просчет всех остальных елементов
            end
         end
         if length(C)==0//при пустом С выдает ошибку plot
            continue
         end
         r=(modulo(25*i,256)/256)//подсчет текущего цвета в пределах [0:1]
         if r>1
             r=1
         end
         if r<0
             r=0
         end
         b=(modulo(5*i,256)/256)
         if b>1
             b=1
         end
         if b<0
             b=0
         end
         g=(modulo((255-25*i),256)/256)
         if g>1
             g=1
         end
         if g<0
             g=0
         end
         plot('nn',real(C),imag(C),'colo',[r,b,g],'linest','none','marker','.','markersize',2)//вывод текущей части фрактала
       
     end
     
endfunction
