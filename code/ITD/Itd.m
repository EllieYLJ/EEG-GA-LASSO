function [H,L]=Itd(x,n,err)
% 将信号x进行ITD分解
% n分解层数
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
    %----终止条件
    if dandiao(tempL)==1 %单调
        break;
    end
    if max(tempL)<err && abs(min(tempL))<err
        break;
    end
end
L=tempL;
end
function rlt=dandiao(xx)
% 求是否单调函数
x1=diff(xx);
rlt=0;
if all(x1>=0) || all(x1<=0)
    rlt=1;
end
end

