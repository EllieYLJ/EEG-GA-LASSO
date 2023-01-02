
%% data segmentation of high score group

fileN=dir('D:\抑郁数据\high 26\*.dat');
s2=zeros(30,1);
k=length(fileN);
for ii=1:k
  x=importdata([ 'D:\抑郁数据\high 26\',fileN(ii).name]);
 X1(:,:,ii)=x.data(20001:20500,:);
end
for ii=1:k
 X2(:,:,ii)=x.data(20501:21000,:);
end
for ii=1:k
 X3(:,:,ii)=x.data(21001:21500,:);
end
for ii=1:k
 X4(:,:,ii)=x.data(21501:22000,:);
end
for ii=1:k
 X5(:,:,ii)=x.data(22001:22500,:);
end
for ii=1:k
 X6(:,:,ii)=x.data(22501:23000,:);
end
for ii=1:k
 X7(:,:,ii)=x.data(23001:23500,:);
end
for ii=1:k
 X8(:,:,ii)=x.data(23501:24000,:);
end
for ii=1:k
 X9(:,:,ii)=x.data(24001:24500,:);
end
for ii=1:k
 X10(:,:,ii)=x.data(24501:25000,:);
end
for ii=1:k
 X11(:,:,ii)=x.data(25001:25500,:);
end
for ii=1:k
 X12(:,:,ii)=x.data(25501:26000,:);
end
for ii=1:k
 X13(:,:,ii)=x.data(26001:26500,:);
end
for ii=1:k
 X14(:,:,ii)=x.data(26501:27000,:);
end
for ii=1:k
 X15(:,:,ii)=x.data(27001:27500,:);
end
for ii=1:k
 X16(:,:,ii)=x.data(27501:28000,:);
end
for ii=1:k
 X17(:,:,ii)=x.data(28001:28500,:);
end
for ii=1:k
 X18(:,:,ii)=x.data(28501:29000,:);
end
for ii=1:k
 X19(:,:,ii)=x.data(29001:29500,:);
end
for ii=1:k
 X20(:,:,ii)=x.data(29501:30000,:);
end

for ii=1:k

 X21(:,:,ii)=x.data(30001:30500,:);
end
for ii=1:k
 X22(:,:,ii)=x.data(30501:31000,:);
end
for ii=1:k
 X23(:,:,ii)=x.data(31001:31500,:);
end
for ii=1:k
 X24(:,:,ii)=x.data(31501:32000,:);
end
for ii=1:k
 X25(:,:,ii)=x.data(32001:32500,:);
end
for ii=1:k
 X26(:,:,ii)=x.data(32501:33000,:);
end
for ii=1:k
 X27(:,:,ii)=x.data(33001:33500,:);
end
for ii=1:k
 X28(:,:,ii)=x.data(33501:34000,:);
end
for ii=1:k
 X29(:,:,ii)=x.data(34001:34500,:);
end
for ii=1:k
 X30(:,:,ii)=x.data(34501:35000,:);
end
for ii=1:k
 X31(:,:,ii)=x.data(35001:35500,:);
end
for ii=1:k
 X32(:,:,ii)=x.data(35501:36000,:);
end
for ii=1:k
 X33(:,:,ii)=x.data(36001:36500,:);
end
for ii=1:k
 X34(:,:,ii)=x.data(36501:37000,:);
end
for ii=1:k
 X35(:,:,ii)=x.data(37001:37500,:);
end
for ii=1:k
 X36(:,:,ii)=x.data(37501:38000,:);
end
for ii=1:k
 X37(:,:,ii)=x.data(38001:38500,:);
end
for ii=1:k
 X38(:,:,ii)=x.data(38501:39000,:);
end

for ii=1:k

 X39(:,:,ii)=x.data(39001:39500,:);
end
for ii=1:k
 X40(:,:,ii)=x.data(39501:40000,:);
end

for ii=1:k
 X41(:,:,ii)=x.data(40001:40500,:);
end
for ii=1:k
 X42(:,:,ii)=x.data(40501:41000,:);
end
for ii=1:k
 X43(:,:,ii)=x.data(41001:41500,:);
end
for ii=1:k
 X44(:,:,ii)=x.data(41501:42000,:);
end
for ii=1:k
 X45(:,:,ii)=x.data(42001:42500,:);
end
for ii=1:k
 X46(:,:,ii)=x.data(42501:43000,:);
end
for ii=1:k
 X47(:,:,ii)=x.data(43001:43500,:);
end
for ii=1:k
 X48(:,:,ii)=x.data(43501:44000,:);
end

for ii=1:k
 X49(:,:,ii)=x.data(44001:44500,:);
end
for ii=1:k
 X50(:,:,ii)=x.data(44501:45000,:);
end

for ii=1:k
 X51(:,:,ii)=x.data(45001:45500,:);
end
for ii=1:k
 X52(:,:,ii)=x.data(45501:46000,:);
end
for ii=1:k
 X53(:,:,ii)=x.data(46001:46500,:);
end
for ii=1:k
 X54(:,:,ii)=x.data(46501:47000,:);
end
for ii=1:k
 X55(:,:,ii)=x.data(47001:47500,:);
end
for ii=1:k
 X56(:,:,ii)=x.data(47501:48000,:);
end
for ii=1:k
 X57(:,:,ii)=x.data(48001:48500,:);
end
for ii=1:k
 X58(:,:,ii)=x.data(48501:49000,:);
end

for ii=1:k
 X59(:,:,ii)=x.data(49001:49500,:);
end
for ii=1:k
 X60(:,:,ii)=x.data(49501:50000,:);
end

X=cat(3,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X18,X19,X20,X21,X22,X23,X24,X25,X26,X27,X28,X29,X30,X31,X32,X33,X34,X35,X36,X37,X38,X39,X40,X41,X42,X43,X44,X45,X46,X47,X48,X49,X50,X51,X52,X53,X54,X55,X56,X57,X58,X59,X60);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ITD feature %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for ii=1:1560
 k1=size(X,2);
 for i=1:k1
     [c,l]=wavedec(X(:,i,ii),3,'db1');
     a3=appcoef(c,l,'db1',3);
     d3=detcoef(c,l,3);
     d2=detcoef(c,l,2);
     d1=detcoef(c,l,1);
     [thr,sorh,keepapp]=ddencmp('den','wv',X(:,i,ii));
     xx=wdencmp('gbl',c,l,'db1',3,thr,sorh,keepapp);
     n=2;
     [H,L]=Itd(xx,n);%itd分解  2是分解的层数
     fs=500;
     [amp,pha,freq]=instant_parameter(H);
     jun_zhi_f=mean(amp,2);%计算瞬时幅度均值
     biao_zhun_cha_f=std(amp,1,2);%计算瞬时幅度标准差
     pian_du_f=skewness(amp,0,2);%计算瞬时幅度的偏度
     feng_du_f=kurtosis(amp,0,2);%计算瞬时幅度的峰度
     jun_zhi_p=mean(freq,2);%计算瞬时频率均值
     biao_zhun_cha_p=std(freq,1,2);%计算瞬时频率标准差
     pian_du_p=skewness(freq,0,2);%计算瞬时频率的偏度
     feng_du_p=kurtosis(freq,0,2);%计算瞬时频率的峰度
     xxx(i,:)=[jun_zhi_f',biao_zhun_cha_f',pian_du_f',feng_du_f',jun_zhi_p',biao_zhun_cha_p',pian_du_p',feng_du_p'];%联级成特征向量
     A=xxx';
 end
 
 k2=size(A,2);
 for u=1:k2
   for  j=1:k2
     t=corrcoef(A(:,u),A(:,j));
     r(u,j)=t(1,2);
   end
 end  % 计算相关系数


  N=length(r);
a=zeros([1,N*(N-1)/2]);
  for w=1:N
    l=(w-1)*(2*N-w)/2+1;
    a(1,l:(l+N-w-1))=r((w+1):end,w);
  end 
 A1(ii,:)=a;  % 将数据拉成一列

end


%% data segmentation of low score group
fileN=dir('D:\抑郁数据\low 24\*.dat');
s2=zeros(30,1);
 k=length(fileN);
for ii=1:k
  x=importdata([ 'D:\抑郁数据\low 24\',fileN(ii).name]);%与load函数一样是输入函数
 Y1(:,:,ii)=x.data(20001:20500,:);
end
for ii=1:k
 Y2(:,:,ii)=x.data(20501:21000,:);
end
for ii=1:k
 Y3(:,:,ii)=x.data(21001:21500,:);
end
for ii=1:k
 Y4(:,:,ii)=x.data(21501:22000,:);
end
for ii=1:k
 Y5(:,:,ii)=x.data(22001:22500,:);
end
for ii=1:k
 Y6(:,:,ii)=x.data(22501:23000,:);
end
for ii=1:k
 Y7(:,:,ii)=x.data(23001:23500,:);
end
for ii=1:k
 Y8(:,:,ii)=x.data(23501:24000,:);
end
for ii=1:k
 Y9(:,:,ii)=x.data(24001:24500,:);
end
for ii=1:k
 Y10(:,:,ii)=x.data(24501:25000,:);
end
for ii=1:k
 Y11(:,:,ii)=x.data(25001:25500,:);
end
for ii=1:k
 Y12(:,:,ii)=x.data(25501:26000,:);
end
for ii=1:k
 Y13(:,:,ii)=x.data(26001:26500,:);
end
for ii=1:k
 Y14(:,:,ii)=x.data(26501:27000,:);
end
for ii=1:k
 Y15(:,:,ii)=x.data(27001:27500,:);
end
for ii=1:k
 Y16(:,:,ii)=x.data(27501:28000,:);
end
for ii=1:k
 Y17(:,:,ii)=x.data(28001:28500,:);
end
for ii=1:k
 Y18(:,:,ii)=x.data(28501:29000,:);
end
for ii=1:k
 Y19(:,:,ii)=x.data(29001:29500,:);
end
for ii=1:k
 Y20(:,:,ii)=x.data(29501:30000,:);
end

for ii=1:k

 Y21(:,:,ii)=x.data(30001:30500,:);
end
for ii=1:k
 Y22(:,:,ii)=x.data(30501:31000,:);
end
for ii=1:k
 Y23(:,:,ii)=x.data(31001:31500,:);
end
for ii=1:k
 Y24(:,:,ii)=x.data(31501:32000,:);
end
for ii=1:k
 Y25(:,:,ii)=x.data(32001:32500,:);
end
for ii=1:k
 Y26(:,:,ii)=x.data(32501:33000,:);
end
for ii=1:k
 Y27(:,:,ii)=x.data(33001:33500,:);
end
for ii=1:k
 Y28(:,:,ii)=x.data(33501:34000,:);
end
for ii=1:k
 Y29(:,:,ii)=x.data(34001:34500,:);
end
for ii=1:k
 Y30(:,:,ii)=x.data(34501:35000,:);
end

for ii=1:k
 Y31(:,:,ii)=x.data(35001:35500,:);
end
for ii=1:k
 Y32(:,:,ii)=x.data(35501:36000,:);
end
for ii=1:k
 Y33(:,:,ii)=x.data(36001:36500,:);
end
for ii=1:k
 Y34(:,:,ii)=x.data(36501:37000,:);
end
for ii=1:k
 Y35(:,:,ii)=x.data(37001:37500,:);
end
for ii=1:k
 Y36(:,:,ii)=x.data(37501:38000,:);
end
for ii=1:k
 Y37(:,:,ii)=x.data(38001:38500,:);
end
for ii=1:k
 Y38(:,:,ii)=x.data(38501:39000,:);
end

for ii=1:k

 Y39(:,:,ii)=x.data(39001:39500,:);
end
for ii=1:k
 Y40(:,:,ii)=x.data(39501:40000,:);
end

for ii=1:k
 Y41(:,:,ii)=x.data(40001:40500,:);
end
for ii=1:k
 Y42(:,:,ii)=x.data(40501:41000,:);
end
for ii=1:k
 Y43(:,:,ii)=x.data(41001:41500,:);
end
for ii=1:k
 Y44(:,:,ii)=x.data(41501:42000,:);
end
for ii=1:k
 Y45(:,:,ii)=x.data(42001:42500,:);
end
for ii=1:k
 Y46(:,:,ii)=x.data(42501:43000,:);
end
for ii=1:k
 Y47(:,:,ii)=x.data(43001:43500,:);
end
for ii=1:k
 Y48(:,:,ii)=x.data(43501:44000,:);
end

for ii=1:k
 Y49(:,:,ii)=x.data(44001:44500,:);
end
for ii=1:k
 Y50(:,:,ii)=x.data(44501:45000,:);
end

for ii=1:k
 Y51(:,:,ii)=x.data(45001:45500,:);
end
for ii=1:k
 Y52(:,:,ii)=x.data(45501:46000,:);
end
for ii=1:k
 Y53(:,:,ii)=x.data(46001:46500,:);
end
for ii=1:k
 Y54(:,:,ii)=x.data(46501:47000,:);
end
for ii=1:k
 Y55(:,:,ii)=x.data(47001:47500,:);
end
for ii=1:k
 Y56(:,:,ii)=x.data(47501:48000,:);
end
for ii=1:k
 Y57(:,:,ii)=x.data(48001:48500,:);
end
for ii=1:k
 Y58(:,:,ii)=x.data(48501:49000,:);
end

for ii=1:k
 Y59(:,:,ii)=x.data(49001:49500,:);
end
for ii=1:k
 Y60(:,:,ii)=x.data(49501:50000,:);
end

Y=cat(3,Y1,Y2,Y3,Y4,Y5,Y6,Y7,Y8,Y9,Y10,Y11,Y12,Y13,Y14,Y15,Y16,Y17,Y18,Y19,Y20,Y21,Y22,Y23,Y24,Y25,Y26,Y27,Y28,Y29,Y30,Y31,Y32,Y33,Y34,Y35,Y36,Y37,Y38,Y39,Y40,Y41,Y42,Y43,Y44,Y45,Y46,Y47,Y48,Y49,Y50,Y51,Y52,Y53,Y54,Y55,Y56,Y57,Y58,Y59,Y60);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ITD feature %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 for m=1:1440
v1=size(Y,2);
 for m1=1:v1
     [c1,l1]=wavedec(Y(:,m1,m),3,'db1');
     aa3=appcoef(c1,l1,'db1',3);
     dd3=detcoef(c1,l1,3);
     dd2=detcoef(c1,l1,2);
     dd1=detcoef(c1,l1,1);
     [thr1,sorh1,keepapp1]=ddencmp('den','wv',Y(:,m1,m));
     yy=wdencmp('gbl',c1,l1,'db1',3,thr1,sorh1,keepapp1);
     [H1,L1]=Itd(yy,2);%itd分解  2是分解的层数
     fs1=500;
     [amp1,pha1,freq1]=instant_parameter(H1);
     jun_zhi_f1=mean(amp1,2);%计算瞬时幅度均值
     biao_zhun_cha_f1=std(amp1,1,2);%计算瞬时幅度标准差
     pian_du_f1=skewness(amp1,0,2);%计算瞬时幅度的偏度
     feng_du_f1=kurtosis(amp1,0,2);%计算瞬时幅度的峰度
     jun_zhi_p1=mean(freq1,2);%计算瞬时频率均值
     biao_zhun_cha_p1=std(freq1,1,2);%计算瞬时频率标准差
     pian_du_p1=skewness(freq1,0,2);%计算瞬时频率的偏度
     feng_du_p1=kurtosis(freq1,0,2);%计算瞬时频率的峰度
     yyy(m1,:)=[jun_zhi_f1' biao_zhun_cha_f1' pian_du_f1' feng_du_f1' jun_zhi_p1' biao_zhun_cha_p1' pian_du_p1' feng_du_p1'];%联级成特征向量
     B=yyy';
 end
 v2=size(B,2);
for n=1:v2
   for  z=1:v2
     t=corrcoef(B(:,z),B(:,n));
     rr(z,n)=t(1,2);
   end
end
 q=length(rr);
h=zeros([1,n*(n-1)/2]);
for p=1:q
    L=(p-1)*(2*q-p)/2+1;
    h(1,L:(L+q-p-1))=rr((p+1):end,p);
end 
A2(m,:)=h;

end
XX=[A1;A2];

% save high Y A2

