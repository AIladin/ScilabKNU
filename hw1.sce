
n=20;
fd=mopen(SCI+'/dz.txt','wt');
for i=1:n do
    q=factorial(i);
    disp(q);
    mputl(string(q),fd);
end



a=%t;
b=%t;
disp(~(a|b),"~a|b");
mputl(string(~(a|b)),fd);
a=%t;
b=%f;
disp(~(a|b));
mputl(string(~(a|b)),fd);
a=%f;
b=%t;
disp(~(a|b));
mputl(string(~(a|b)),fd);
a=%f;
b=%f;
disp(~(a|b));
mputl(string(~(a|b)),fd);



c=input("c:");
q=0.02456;
w=0.007823;
r=((q+w)/(q-w))*log(1+q*c);
disp(r,"ansver:");
mputl(string(r),fd);
mclose(fd);

