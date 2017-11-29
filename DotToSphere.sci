// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 29.11.2017
//
function DotToSphere(X,Y,Z)
clf()
/*phi = linspace(0,2*%pi,30);
u = linspace(0,%pi,30);
x= a*cos(phi)'*sin(u);
y= b*sin(phi)'*sin(u);
z= c*cos(u)'*ones(phi);
*/
// plot of a sphere using facets computed by eval3dp
deff("[x,y,z]=sph(alp,tet)",["x=r*cos(alp).*cos(tet)+orig(1)*ones(tet)";..
     "y=r*cos(alp).*sin(tet)+orig(2)*ones(tet)";..
     "z=r*sin(alp)+orig(3)*ones(tet)"]);
r=1; orig=[0 0 0];

[xx,yy,zz]=eval3dp(sph,linspace(-%pi/2,%pi/2,40),linspace(0,%pi*2,20));
;plot3d(xx,yy,zz)

deff("[x1,y1,z1]=dot(a,b)",["x1=a";"y1=b";"z1=-(a*X+b*Y)/Z+1"])
[xx,yy,zz]=eval3dp(dot,linspace(-1,1,20),linspace(-1,1,20));
;plot3d(xx,yy,zz)
endfunction
