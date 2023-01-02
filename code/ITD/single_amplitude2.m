function  amp=single_amplitude2(H,H_ex_local,H_ex_num,k)
  %此函数是求幅值的一个子函数
  %求一个H分量的瞬时幅值,这里H是向量，不是矩阵
  % k是所求的H分量的所在层数
  % H_ex_local是矩阵，行代表层数，列代表极点位置
  % H_ex_num是向量，是每层的H分量的极值点个数
  %输入信号为原始信号，一个H分量及它对应的极值位置
  amp=zeros(size(H));
  extract_local=H_ex_local(k,1:H_ex_num(k));   %H向量对应的极点位置,它是一个矩阵
     for  i=1:H_ex_num(k)-2
              if  and(H(extract_local(i))>=0,H(extract_local(i+1))<0);
                   for n=extract_local(i):extract_local(i+1)-1
                    if H(n)>0
                         amp(n)=H(extract_local(i));
                    else
                         amp(n)=-H(extract_local(i+1));
                    end
                   end
              else and(H(extract_local(i))<=0,H(extract_local(i+1))>0);
                  for n=extract_local(i):extract_local(i+1)-1
                      if H(n)<0
                          amp(n)=-H(extract_local(i));
                      else
                          amp(n)=H(extract_local(i+1));
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
                 amp(n)=H(p);
              elseif H(q)~=0
                if H(n)>0
                    amp(n)=H(p);
                else
                  amp(n)=-H(q);
                end
              end
          end
      elseif and(H(s)>0,H(p)<0);
          for n=p:q
              if H(q)==0
                amp(n)=-H(p);
              elseif H(q)~=0
                if H(n)<0
                  amp(n)=-H(p);
                else
                  amp(n)=H(q);
                end
              end
          end
       end  
 %%%%%%%%%%%---end---%%%%%%%%%%%%%%%      