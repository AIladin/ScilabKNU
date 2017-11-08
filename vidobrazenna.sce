// Copyright (C) 2017 - - Ailadin
//
// Date of creation: 08.11.2017
//

//в первом окне стрим заданный квадрат
clf()
subplot(221)
B=[-5:0.1:5];
for i=-5:0.1:5
    for j=1:length(B)
        A(j)=[i]
    end
    plot(A,B,'r')
    plot(B,A,'g')
end
//во втором окне отражение 1/z
subplot(222)
B=[-5:0.1:5];
for i=-5:0.1:5
    for j=1:length(B)
        A(j)=[i]
    end
    V=1/complex(A,B)
    H=1/complex(B,A)
    plot(real(V),imag(V),'r')
    plot(real(H),imag(H),'g')
end
//в третьем окне отражение z^2
subplot(223)
B=[-5:0.1:5];
for i=-5:0.1:5
    for j=1:length(B)
        A(j)=[i]
    end
    V=complex(A,B).*complex(A,B)
    H=complex(B,A).*complex(B,A)
    plot(real(V),imag(V),'r')
    plot(real(H),imag(H),'g')
end
//в четвертом (1-z)/(1+z)
subplot(224)
B=[-5:0.1:5];
for i=-5:0.1:5
    for j=1:length(B)
        A(j)=[i]
    end
    V=(1-complex(A,B))./(1+complex(A,B))
    H=(1-complex(B,A))./(1+complex(B,A))
    plot(real(V),imag(V),'r')
    plot(real(H),imag(H),'g')
end
