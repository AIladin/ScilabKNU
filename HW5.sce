// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 11.10.2017
//
/*function b=Is_Ferma(a,n)//функция проверки число на псевдопростоту
    b=(modulo(a**(n-1)-1,n)==0);
endfunction

function k=Find_Ferma(N)//функция подсчета псевдопростых по основанию 2
k=0
for i=1:1:N
    if Is_Ferma(2,i)
        k=k+1
        
    end
end
endfunction

function [x,y]=Find_Para(n) //функция нахождения пары чисел разница которых делится а n
    x=0
    y=0//в случае их отсутствия віведет 0
    A=int(rand(1,n+1)*10**(2))
    for i=1:n+1
        for j=1:n+1
            if modulo(A(i)-A(j),n)==0 & i~=j
            x=A(i)
            y=A(j)//в случае нахождения пары выйдет из цикла
            break
            end
        end
    end
endfunction

function g=Palind(n,b)//функция проверки на палиндром в системе счисления b
    g=%f
    s=dec2base(n,b);
    a=strrev(s);//если число равно себе же развернутому наооборот то оно палиндром
   
    if   s==a
        g=%t
    end
    
endfunction

function g=evk(a,b)//функция нахождения количества шагов алгоритма Эвклида
   x=min(a,b)
   g=0
   while modulo(a,b)~=0
   x=modulo(a,b)
   a=b
   b=x
   g=g+1
   end 
   
endfunction


Find_Ferma(100)
Find_Ferma(1000)
Find_Ferma(1000000)//вывод количества псевдопростых по основанию 2

P=primes(1000)
A=int(rand(1,10000000)*10**(3))//генерация 10**7 случайных чисел
k_prost=0
k_ferma=0
for i=1:1:length(A)
         if Is_Ferma(int(rand()*10),A(i)) & Is_Ferma(int(rand()*10),A(i)) & Is_Ferma(int(rand()*10),A(i)) // проверка критерием ферма по трем случайным основаниям
            k_ferma=k_ferma+1
          end  
        
    if test
        k_ferma=k_ferma+1
    end
    for j=1:1:length(P)
        if A(i)==P(j)//проверка принадлежности множеству простых
            k_prost=k_prost+1;
            break
        end
    end
end
disp(k_prost,"кількість простих")
disp(k_ferma,"кількість псевдопростих")
N=1000000
k=0
for i=1:N
    if Palind(i,2)&Palind(i,3)
        k=k+1//поиск палиндромов в системе счилений 2 и 3 одновременно
    end
end
disp(k)

for n=1:20
b=%T
i=0
    while b
    i=i+1
    j=0
     while b
     j=j+1
      if evk(i,j)==n
      b=%f//если Эвклидов алгоритм выполняется за n шагов для чисел i j увеличивается счетчик 
      end//просходит выход из двух циклов
    if j>1000//цикл for очень силно загружает процессор моего ноутбука в отличии от while именно в этом примере
    j=0;
    end
     end        
    end
disp(n,"крок:")  
disp(min(i,j),"a:")//вывод первых чисел НОД которых находится в n шагов по алгоритму эвклида
disp(max(i,j),"b:")
end

a=int(input("a"));
b=int(input("b"));
c=int(input("c"));
d=double(gcd([a,b]));
if modulo(c,d)~=0//если  НОД(а,b) не делит с то диафантовое уравнение не имеет решения в действительных числах
  then  disp(0)

else//в ином случае выполняется подбор ответов перебором
b=%t
 for i=1:10000
     for j=1:10000
        if a*i+b*j==c
          disp(i,"x:");//проверка положительных целых
         disp(j,"y:");
         break
        end
        if a*(-i)+b*(-j)==c//проверка отрицатеьных целых
          disp(-i,"x:");
         disp(-j,"y:");
         break
        end
  end
  end
end*/
x1=input("x1:")//иногда происходит сбой из за которого приходится вводит значение координаты по несколько раз
y1=input("y1:")
x2=input("x2:")
y2=input("y2:")//ввод координат точек


X=[min(x1,x2):1:max(x1,x2)]//значения абсцисс графика
Y=(X-x1)*(y2-y1)/(x2-x1)+y1;//нахождения ординат функции
k=0

for i=min(x1,x2):max(x1,x2)
 for j=min(y1,y2):max(y1,y2)
      if (i-x1)/(x2-x1)==(j-y1)/(y2-y1)//проверка принадлежности точек с целочисленными координатами графику
       plot(i,j,'k.')//отображение их символом . на графике
       k=k+1//подсчет их количества
      end   
 end         
end
disp(k);
g=get('current_axes'); 
g.grid=[0 0];//постороение сетки для облегчения проверки
plot(X,Y);//постройка графика
