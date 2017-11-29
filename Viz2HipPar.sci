// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 29.11.2017
//
function VizHipPar(p,q)
clf()
/*   phi = linspace(0,2*%pi,10);
u = linspace(-5,5,10);
x= a*cosh(phi)'*cosh(u);
y= b*sinh(phi)'*sinh(u);
z= c*sinh(u)'*ones(phi);
*/
deff("[x,y,z]=hip(alp,tet)",[
     "x=alp+orig(1)*ones(tet)";..
     "y=tet+orig(2)*ones(alp)";..
     "z=alp**2/(2*p)-tet**2/(2*q)"]);
 orig=[0 0 0];
 
[xx,yy,zz]=eval3dp(hip,linspace(-10,10,40),linspace(-10,10,40));


plot3d(xx,yy,zz)

endfunction
