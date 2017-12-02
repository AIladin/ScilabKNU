

function r=RRoot(c)
    /*Функция которая вычислияет рациональные корни данного многочлена.
    
    На ввод принимает вектор с  коофициентами от а1 до аn
    */
    q=[1,factor(abs(c(1)))]
    p=[1,factor(abs(c(length(c))))]
    l=list()
    r=list()
    for i=1:length(q)
        for j=1:length(p)
        t=p(j)/q(i)
         b=%t
    
    for k=1:length(l)
        if l(k)==t
            b=%f
            break
        end
    end
    if b 
        l($+1)=t
        l($+1)=-t
    end
        end 
    end
    pause
    for i=1:length(l)
        
        if Gorner(c,l(i))(1)==0
            r($+1)=l(i)
        end
    end
endfunction
