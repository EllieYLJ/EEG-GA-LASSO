
%% feature learning of GA-LASSO model

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% load data %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('FCfeature_EEG.mat')
X1=HSG_FCfeature(1:1248,:);
X2=LSG_FCfeature(1:1152,:);
trainX=[X1;X2];

c=-ones(1248,1);
d=ones(1152,1);

y=[c;d];

XX=trainX;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Heat Kernel 权重 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

tt = XX./repmat(sqrt(sum(XX.^2,1)),size(XX,1),1);
t=1;
q1=size(tt,2);
for q2=1:q1
   for  q3=1:q1
     qq(q2,q3)=1/exp(-norm(tt(:,q2) - tt(:,q3))/2*t^2);
   end
end


d1=size(qq,1);
D=eye(d1);
D1=zeros(d1);
for dd1=1:d1
   d2=sum(qq(dd1,:)) ; 
    Dd=D(dd1,:)*d2;
    D1(dd1,:)=Dd;
end

W=D1-qq;
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 模型求解（交替方向乘子法） %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r=pinv(XX'*XX)*XX'*y;
re=abs(r).^1;
ree=re';
R=diag(ree);%将alpha转为一个对角矩阵

lam1=0.16;
lam2=0.14;

rou=0.6;
lamda=zeros(1953,1);

X=XX;D=rand(1953,1);beta0=zeros(1953,1);
e=1;k=0;
while e>1.0e-4&&k<=100
    D0=D;beta=beta0;
    A=2*X'*X+2*lam2*W+rou*R'*R;
    B=2*X'*y +rou*R'*D0-R'*lamda;
    C=inv(A);
    beta0=C*B;
    Da=Shrink(R*beta0+lamda/rou,lam1/rou);
    e=norm(beta-beta0);
    disp(e);
    lamda=lamda+rou*(R*beta0-Da);
    k=k+1;
end


beta=beta0;
bb=beta';

bb0=abs(bb);
id=find(bb0<0.05);
bb(1,id)=0;
b=bb';


XX=[HSG_FCfeature;LSG_FCfeature];
for i=1:3000
    data(i,:)=XX(i,:).*(b./r)';
end
% data为特征矩阵

%去除零特征
for j=1:3000
    id=find(data(j,:)==0);
    data(:,id)=[];
end

