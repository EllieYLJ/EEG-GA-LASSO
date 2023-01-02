

fileF=dir('D:\数据\1\1\*.mat');
k=length(fileF);x=[];
for i=1:k
x=importdata(['D:\数据\1\1\',fileF(i).name]);
n=5;
[H,L]=Itd(x,5);%itd分解
fs=128;
[amp,pha,freq]=instant_parameter(H,fs);
jun_zhi_f=mean(amp,2);%计算瞬时幅度均值
biao_zhun_cha_f=std(amp,0,2);%计算瞬时幅度标准差
pian_du_f=skewness(amp,0,2);%计算瞬时幅度的偏度
feng_du_f=kurtosis(amp,0,2);%计算瞬时幅度的峰度
jun_zhi_p=mean(freq,2);%计算瞬时频率均值
biao_zhun_cha_p=std(freq,0,2);%计算瞬时频率标准差
pian_du_p=skewness(freq,0,2);%计算瞬时频率的偏度
feng_du_p=kurtosis(freq,0,2);%计算瞬时频率的峰度
x(i,:)=[jun_zhi_f' biao_zhun_cha_f' pian_du_f' feng_du_f' jun_zhi_p' biao_zhun_cha_p' pian_du_p' feng_du_p'];%联级成特征向量
end