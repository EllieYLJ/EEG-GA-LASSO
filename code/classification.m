
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Classification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data=load('data')
c=-ones(1560,1);
d=ones(1440,1);
y=[c;d];%���ǩ,����Ϊ1,�쳣Ϊ-1
labels=y;


ACC=[];SEN=[];SPE=[];
accuracy=[];sensitivity=[];specificity=[];

%������֤
k = 10;%Ԥ�����ݷֳ�ʮ��
sum_accuracy_svm = 0;
[m,n] = size(data);
%������֤,ʹ��ʮ�۽�����֤  Kfold  
%indicesΪ m ��һ�����ݣ���ʾÿ��ѵ����������k�����ݵ���һ��
indices = crossvalind('Kfold',m,k);


for i = 1:k
    test_indic = (indices == i);
    train_indic = ~test_indic;
    train_datas = data(train_indic,:);%�ҳ�ѵ���������ǩ
    train_labels = labels(train_indic,:);
    test_datas = data(test_indic,:);%�ҳ������������ǩ
    test_labels = labels(test_indic,:);
    
%     ��ʼsvm�����ѵ����fitcsvm���ڶ����࣬fitcecoc���ڶ����,    
    classifer = fitcsvm(train_datas,train_labels);%ѵ��ģ��
    predict_label  = predict(classifer, test_datas);%����

    % KNN������
    % X��ѵ�����ݣ�Y�Ǳ�ǩ��Z��ҪԤ�������  ������ȱ�پ�������
    % �����Զ��Ż����� ������ŵĽ�����NumNeighbors�;���ָ�����Distance
    % �������ٶȽ���  ������Ų����󣬿ɸ��Ĵ��� ֱ�Ӹ�ֵ
    % ��Ҫ�ж����ݼ���׼ȷ�� ���num���� 
    % 
    % Mdl = fitcknn(train_datas,train_labels,'OptimizeHyperparameters','auto',...
    %     'HyperparameterOptimizationOptions',...
    %     struct('AcquisitionFunctionName','expected-improvement-plus')) ;

% Mdl = fitcknn(train_datas,train_labels) ;
% predict_label = predict(Mdl,test_datas); %Ԥ��Z�����

    % % ���㽻����֤��ʧ������Ĭ����ʽ��������Ϊģ�͵�ָ�꣬ԽСģ��Խ�á�
    % CVMdl = crossval(Mdl);
    % kloss = kfoldLoss(CVMdl);

% ���ر�Ҷ˹������
% Mdl = fitcnb(train_datas,train_labels) ;
% predict_label = predict(Mdl,test_datas); 

    accuracy_svm = length(find(predict_label == test_labels))/length(test_labels);%׼ȷ��
    sum_accuracy_svm = sum_accuracy_svm + accuracy_svm;
    TN = sum(predict_label==-1&predict_label==test_labels);
    TP = sum(predict_label==1&predict_label==test_labels);
    FP = sum(test_labels==-1&predict_label~=test_labels);
    FN = sum(test_labels==1&predict_label~=test_labels);
    ACC(i)=accuracy_svm;
    SEN(i)=TP/(TP+FN);
    SPE(i)=TN/(TN+FP); 
end

mean_SEN=mean(SEN);
mean_SPE=mean(SPE);


%��ƽ��׼ȷ��
mean_accuracy_svm = sum_accuracy_svm / k;
disp('ƽ��׼ȷ�ʣ�');   
disp( mean_accuracy_svm);

