function r=RozkladZaGornerom(c,x)
    /*Функция которая розкладывает многочлен по степеням (х-а)
    
    На ввод принимает вектор с  коофициентами от а1 до аn потом число а.
    Возвращает список коофициентов разложения
    */
    l=list(c)
    r=list()
    for i=1:length(c)
        [t,tt]=Gorner(l(i),x)
        l($+1)=tt
        r($+1)=tt(length(tt)+1-i)
        
    end
    
    disp(l)
endfunction
