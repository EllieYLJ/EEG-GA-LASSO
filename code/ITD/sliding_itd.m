function sliding_itd(d, x, k, w, o)

% d: trading date
% x:time series (eg. close price)
% k:minimum length of time series (eg. 50)
% w:the number of PRCs and residual (eg. 6)
% o:output size (eg. 1)
% Written by Lijun Yang, Feng Zhou(fengzhou@gdufe.edu.cn)

n=length(x);
num=n-o;
all_labels=[];
all_features=[];
all_IA=[];
all_IP=[];
%d=datestr(d, 29);
dd=d(k:num);
for i=k:num
    i
    xx = x(1:i);
    %label = x(i+1:i+o)'; 
    if x(i+1)>=x(i)
        label = 1;
    else label = 0;  
    end
    all_labels=[all_labels;label];
	max_data = max(xx);
	xx = xx / max_data;
%     opts=Settings_IF_v1('IF.Xi',2,'IF.alpha','ave');
%     opts=Settings_IF_v1('IF.delta',10^-2,'IF.Xi',1.9);
%     [IMF,] = FIF_v1(xx, opts);
    [IMF,~]=Itd(xx,w-1);%itd�ֽ�
    [IA,IP,~]=instant_parameter(IMF);%����˲ʱ��ȣ�˲ʱ��λ��˲ʱƵ��5*2408
    w1=w-1;
    res=xx-sum(IMF)';
    IMF=[IMF', res];
    imf_num = size(IMF, 2);
    if imf_num > w
        IMF=IMF(:, end-w+1:end);
        imf_num = size(IMF, 2);
    end 
	feature = [zeros(1, w-imf_num), IMF(i, :)*max_data];
    all_features = [all_features; reshape(feature, 1, w)];
    IA_tmp =[zeros(1, w-imf_num), IA(:, i)'*max_data];
    all_IA = [all_IA; reshape(IA_tmp, 1, w1)];
    IP_tmp = [zeros(1, w-imf_num),IP(:, i)'];
    all_IP = [all_IP; reshape(IP_tmp, 1, w1)];
end
%all_features=[dd, all_features];

csvwrite('../../data/huada_PRC_0721.csv',all_features);
csvwrite('../../data/huada_IA_0721.csv',all_IA);
csvwrite('../../data/huada_IP_0721.csv',all_IP);
%csvwrite('pian_IF.csv',IF);
csvwrite('../../data/huada_label_0721.csv',all_labels);
T=cell2table(dd);
writetable(T, '../../data/huada_itd_date_0721.csv');

