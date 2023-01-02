% 将信号x进行分解一层ITD分解
% H表示固有旋转分量
% L表示基信号
function [H,L]=ItdBaseDecomp4(x)
[num,T]=extrema_1(x);
N=length(x);
L=zeros(1,N);
a=0.5;
L(T(1))=(x(T(1))+x(T(2)))/2;
for k=1:num-2
    L(T(k+1))=a*(x(T(k))+((T(k+1)-T(k))/(T(k+2)-T(k)))*(x(T(k+2))-x(T(k))))+(1-a)*x(T(k+1));
end
L(T(num))=(x(T(num-1))+x(T(num)))/2;
for k=1:num-1
    for t=(T(k)+1):T(k+1);
        L(t)=L(T(k))+((L(T(k+1))-L(T(k)))/(x(T(k+1))-x(T(k))))*(x(t)-x(T(k)));
    end
end
H=[];
for t=1:N;
   H(t)=x(t)-L(t);
end
end

