

fileF=dir('D:\����\1\1\*.mat');
k=length(fileF);x=[];
for i=1:k
x=importdata(['D:\����\1\1\',fileF(i).name]);
n=5;
[H,L]=Itd(x,5);%itd�ֽ�
fs=128;
[amp,pha,freq]=instant_parameter(H,fs);
jun_zhi_f=mean(amp,2);%����˲ʱ���Ⱦ�ֵ
biao_zhun_cha_f=std(amp,0,2);%����˲ʱ���ȱ�׼��
pian_du_f=skewness(amp,0,2);%����˲ʱ���ȵ�ƫ��
feng_du_f=kurtosis(amp,0,2);%����˲ʱ���ȵķ��
jun_zhi_p=mean(freq,2);%����˲ʱƵ�ʾ�ֵ
biao_zhun_cha_p=std(freq,0,2);%����˲ʱƵ�ʱ�׼��
pian_du_p=skewness(freq,0,2);%����˲ʱƵ�ʵ�ƫ��
feng_du_p=kurtosis(freq,0,2);%����˲ʱƵ�ʵķ��
x(i,:)=[jun_zhi_f' biao_zhun_cha_f' pian_du_f' feng_du_f' jun_zhi_p' biao_zhun_cha_p' pian_du_p' feng_du_p'];%��������������
end