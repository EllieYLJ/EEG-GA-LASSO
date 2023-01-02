function  pha=single_phase(H,H_ex_local,H_ex_num,k)
  %�˺���������λ��һ���Ӻ���
  %��һ��H������˲ʱ��λ,����H�����������Ǿ���
  % k�������H���������ڲ���
  % H_ex_local�Ǿ����д���������д�����λ��
  % H_ex_num����������ÿ���H�����ļ�ֵ�����
  %�����ź�Ϊԭʼ�źţ�һ��H����������Ӧ�ļ�ֵλ��
  pha=zeros(size(H));
  extract_local=H_ex_local(k,1:H_ex_num(k));   %extract_local��H�����ĸ�����ֵλ�ã���H_ex_num(k)����ֵ
     for  i=1:H_ex_num(k)-2  %  iΪ��ֵ������
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
       s=extract_local(H_ex_num(k)-2);         %ע�⼫ֵ��ĸ���
       p=extract_local(H_ex_num(k)-1); 
       q=extract_local(H_ex_num(k));
        %���һ����ֵ����Ĵ���
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
