
function VizOdnHip(a,b,c)
clf()
/*   phi = linspace(0,2*%pi,10);
u = linspace(-5,5,10);
x= a*cosh(phi)'*cosh(u);
y= b*sinh(phi)'*sinh(u);
z= c*sinh(u)'*ones(phi);
*/

deff("[x,y,z]=hip(alp,tet)",["x=a*cos(alp).*cosh(tet)+orig(1)*ones(tet)";..
     "y=b*sin(alp).*cosh(tet)+orig(2)*ones(tet)";..
     "z=c*sinh(tet)+orig(3)*ones(alp)"]);
 orig=[0 0 0];
[xx,yy,zz]=eval3dp(hip,linspace(0,2*%pi,40),linspace(-1,1,20));
;plot3d(xx,yy,zz)
[xx,yy,zz]=eval3dp(hip,linspace(0,2*%pi,40),linspace(-1,1,20));
plot3d(-xx,-yy,zz)

endfunction
