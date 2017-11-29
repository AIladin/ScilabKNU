// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 29.11.2017
//
function VizElipsoid(a,b,c)
clf()
/*phi = linspace(0,2*%pi,30);
u = linspace(0,%pi,30);
x= a*cos(phi)'*sin(u);
y= b*sin(phi)'*sin(u);
z= c*cos(u)'*ones(phi);
*/
// plot of a sphere using facets computed by eval3dp
deff("[x,y,z]=sph(alp,tet)",["x=a*cos(alp).*cos(tet)+orig(1)*ones(tet)";..
     "y=b*cos(alp).*sin(tet)+orig(2)*ones(tet)";..
     "z=c*sin(alp)+orig(3)*ones(tet)"]);
r=1; orig=[0 0 0];
[xx,yy,zz]=eval3dp(sph,linspace(-%pi/2,%pi/2,40),linspace(0,%pi*2,20));
clf();plot3d(xx,yy,zz)



endfunction
