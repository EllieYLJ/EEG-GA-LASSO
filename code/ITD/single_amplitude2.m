function  amp=single_amplitude2(H,H_ex_local,H_ex_num,k)
  %�˺��������ֵ��һ���Ӻ���
  %��һ��H������˲ʱ��ֵ,����H�����������Ǿ���
  % k�������H���������ڲ���
  % H_ex_local�Ǿ����д���������д�����λ��
  % H_ex_num����������ÿ���H�����ļ�ֵ�����
  %�����ź�Ϊԭʼ�źţ�һ��H����������Ӧ�ļ�ֵλ��
  amp=zeros(size(H));
  extract_local=H_ex_local(k,1:H_ex_num(k));   %H������Ӧ�ļ���λ��,����һ������
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
       s=extract_local(H_ex_num(k)-2);         %ע�⼫ֵ��ĸ���
       p=extract_local(H_ex_num(k)-1); 
       q=extract_local(H_ex_num(k));
        %���һ����ֵ����Ĵ���
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