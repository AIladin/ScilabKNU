// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 21.11.2017
//
function LaneFrom2(a,b)
     /*Функция строит прямую через две точки
    
    точки задются векторами их координат 
    */
    t=[-20,20]
    x=a(1)+(b(1)-a(1))*t
    y=a(2)+(b(2)-a(2))*t
    z=a(3)+(b(3)-a(3))*t
    param3d(x,y,z)
     param3d(a(1),a(2),a(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
    param3d(b(1),b(2),b(3))
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 3
   
    param3d(50,50,50)
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 0
    param3d(-50,-50,-50)
    e=gce()
    e.mark_mode = "on"
    e.mark_style = 0
    e.mark_size = 0
    
endfunction
