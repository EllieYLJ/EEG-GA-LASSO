function  pha=single_phase(H,H_ex_local,H_ex_num,k)
  %此函数是求相位的一个子函数
  %求一个H分量的瞬时相位,这里H是向量，不是矩阵
  % k是所求的H分量的所在层数
  % H_ex_local是矩阵，行代表层数，列代表极点位置
  % H_ex_num是向量，是每层的H分量的极值点个数
  %输入信号为原始信号，一个H分量及它对应的极值位置
  pha=zeros(size(H));
  extract_local=H_ex_local(k,1:H_ex_num(k));   %extract_local是H向量的各个极值位置，有H_ex_num(k)个极值
     for  i=1:H_ex_num(k)-2  %  i为极值点的序号
              if  and(H(extract_local(i))>=0,H(extract_local(i+1))<0);
                   for n=extract_local(i):extract_local(i+1)-1
                    if H(n)>0
                         pha(n)=((H(n)/H(extract_local(i)))*(pi/2))+(1-(H(n)/H(extract_local(i))))*pi;
                    else
                         pha(n)=(H(n)/H(extract_local(i+1)))*((3*pi)/2)+(1-(H(n)/H(extract_local(i+1))))*pi;
                    end
                   end
              else and(H(extract_local(i))<=0,H(extract_local(i+1))>0);
                  for n=extract_local(i):extract_local(i+1)-1
                      if H(n)<0
                          pha(n)=(H(n)/H(extract_local(i)))*((3*pi)/2)+(1-(H(n)/H(extract_local(i))))*2*pi;
                      else
                          pha(n)=(H(n)/H(extract_local(i+1)))*(pi/2);
                      end
                  end
              end
     end
       s=extract_local(H_ex_num(k)-2);         %注意极值点的个数
       p=extract_local(H_ex_num(k)-1); 
       q=extract_local(H_ex_num(k));
        %最后一个极值区间的处理
       if and(H(s)<0,H(p)>0)
          for n=p:q
              if H(q)==0
                 pha(n)=((H(n)/H(p))*(pi/2))+(1-(H(n)/H(p)))*pi;
              elseif H(q)~=0
                if H(n)>0
                    pha(n)=((H(n)/H(p))*(pi/2))+(1-(H(n)/H(p)))*pi;
                else
                  pha(n)=(H(n)/H(q))*((3*pi)/2)+(1-(H(n)/H(q)))*pi;
                end
              end
          end
      elseif and(H(s)>0,H(p)<0);
          for n=p:q
              if H(q)==0
                pha(n)=(H(n)/H(p))*((3*pi)/2)+(1-(H(n)/H(p)))*2*pi;
              elseif H(q)~=0
                if H(n)<0
                  pha(n)=(H(n)/H(p))*((3*pi)/2)+(1-(H(n)/H(p)))*2*pi;
                else
                  pha(n)=(H(n)/H(q))*(pi/2);
                end
              end
          end
       end  
 %%%%%%%%%%%---end---%%%%%%%%%%%%%%%                          
