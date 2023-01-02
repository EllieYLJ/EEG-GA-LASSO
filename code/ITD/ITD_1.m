 function [PRC,IA,IP,IF]=ITD_1(X,D,N)
% ���룺
% XΪһ������(������)��Ϊlength*1
% NΪITD�ֽ���� 
% �����
% PRCΪITD�ֽ��ĸ���������N*length
% IAΪTD�ֽ��ĸ���������˲ʱ��ȣ�Ϊ N*length
% IPΪITD�ֽ��ĸ���������˲ʱ��λ��Ϊ N*length
% IFΪITD�ֽ��ĸ���������˲ʱƵ�ʣ�Ϊ N*��length-1��
[PRC,~]=Itd(X,N);%itd�ֽ�
[IA,IP,IF]=instant_parameter(PRC);%����˲ʱ��ȣ�˲ʱ��λ��˲ʱƵ��5*2408
csvwrite('pian_PRC.csv',PRC');
csvwrite('pian_IA.csv',IA');
csvwrite('pian_IP.csv',IP');
csvwrite('pian_IF.csv',IF');
T=cell2table(D);
writetable(T, 'pian_itd_date.csv');