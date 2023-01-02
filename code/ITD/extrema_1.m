% [extrame_num,extrame_location]=extrema_1(raw_signal); 
function [k,T]=extrema_1(x)   
 n=2;     %初始 
 T(1)=1;  %存极值位置的向量
 k=2;
 ex_min=inf;
 ex_max=inf;
 
 if x(1)>x(2)
     ex_min=x(2);
 else
     ex_max=x(2);
 end
 
 for n=3:length(x)
     if    and(length(T)==1,and(ex_max==x(n-1),ex_max==x(1))) 
         if  ex_max>x(n)
             ex_min=x(n);
         else 
             ex_max=x(n);
         end
     elseif  ex_max==x(n-1)  
           if ex_max>x(n)
             ex_min=x(n);
             T(k)=n-1;
             k=k+1;
             ex_min=x(n);
           else  
             ex_max=x(n);
           end
     elseif x(n-1)==ex_min
         if ex_min<x(n)
             T(k)=n-1;
             k=k+1;
             ex_max=x(n);
         else
             ex_min=x(n);
         end
     end
 end
 if n==length(x)
     T(k)=n;
 end
