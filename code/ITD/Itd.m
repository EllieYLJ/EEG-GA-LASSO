function [H,L]=Itd(x,n,err)
% ���ź�x����ITD�ֽ�
% n�ֽ����
% err
if nargin==1
    n=20;
    err=0.01;
end
if nargin==2
    err=0.01;
end
[tempH1,tempL]= ItdBaseDecomp4(x);
H=[tempH1];
for i=1:n-1
    [tempH,tempL]= ItdBaseDecomp4(tempL);
    H=[H;tempH];
    %----��ֹ����
    if dandiao(tempL)==1 %����
        break;
    end
    if max(tempL)<err && abs(min(tempL))<err
        break;
    end
end
L=tempL;
end
function rlt=dandiao(xx)
% ���Ƿ񵥵�����
x1=diff(xx);
rlt=0;
if all(x1>=0) || all(x1<=0)
    rlt=1;
end
end

