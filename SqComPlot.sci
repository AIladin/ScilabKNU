// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 07.11.2017
//
function SqComPlot(n)

z1=0.9+0.4*%i//задані комплексні числа
z2=0.9+0.5*%i
m1=0.9848858
m2=1.029563//заранее вычесленные модули и углы для тригоном. формы
phi1=0.4182243
phi2=0.5070985
A1=[]//определение векторов для хранения корней
A2=[]
for k=0:n//вычисление корней по формуле на один больше что б замкнуть линию
    A1(k+1)=nthroot(m1,n)*(cos((phi1+2*%pi*k)/n)+%i*sin((phi1+2*%pi*k)/n))
    A2(k+1)=nthroot(m2,n)*(cos((phi2+2*%pi*k)/n)+%i*sin((phi2+2*%pi*k)/n))
end

plot(real(A1),imag(A1),real(A2),imag(A2))//график единичная окружность

endfunction
