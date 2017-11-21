// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function r=What2Planes(A,B,C,D,A1,B1,C1,D1)
    /*Функция определяет взаимное расположение 2 плоскостей
    
    входные данные коофициенты первой а затем второй плоскости
    вывод %f-пересекаются %t-не пересекаются
    */
    if A*B1==B*A1 & C*B1==B*C1
        r=%t
    else
        r=%f
    end
    
endfunction
