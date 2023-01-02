
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Classification %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% data=load('data')
c=-ones(1560,1);
d=ones(1440,1);
y=[c;d];%类标签,正常为1,异常为-1
labels=y;


ACC=[];SEN=[];SPE=[];
accuracy=[];sensitivity=[];specificity=[];

%交叉验证
k = 10;%预将数据分成十份
sum_accuracy_svm = 0;
[m,n] = size(data);
%交叉验证,使用十折交叉验证  Kfold  
%indices为 m 行一列数据，表示每个训练样本属于k份数据的哪一份
indices = crossvalind('Kfold',m,k);


for i = 1:k
    test_indic = (indices == i);
    train_indic = ~test_indic;
    train_datas = data(train_indic,:);%找出训练数据与标签
    train_labels = labels(train_indic,:);
    test_datas = data(test_indic,:);%找出测试数据与标签
    test_labels = labels(test_indic,:);
    
%     开始svm多分类训练，fitcsvm用于二分类，fitcecoc用于多分类,    
    classifer = fitcsvm(train_datas,train_labels);%训练模型
    predict_label  = predict(classifer, test_datas);%测试

    % KNN分类器
    % X是训练数据，Y是标签，Z是要预测的数据  代码里缺少具体数据
    % 采用自动优化参数 获得最优的近邻数NumNeighbors和距离指标参数Distance
    % 但运行速度较慢  获得最优参数后，可更改代码 直接赋值
    % 若要判断数据集的准确率 设计num计数 
    % 
    % Mdl = fitcknn(train_datas,train_labels,'OptimizeHyperparameters','auto',...
    %     'HyperparameterOptimizationOptions',...
    %     struct('AcquisitionFunctionName','expected-improvement-plus')) ;

% Mdl = fitcknn(train_datas,train_labels) ;
% predict_label = predict(Mdl,test_datas); %预测Z的类别

    % % 计算交叉验证损失，采用默认形式，可以作为模型的指标，越小模型越好。
    % CVMdl = crossval(Mdl);
    % kloss = kfoldLoss(CVMdl);

% 朴素贝叶斯分类器
% Mdl = fitcnb(train_datas,train_labels) ;
% predict_label = predict(Mdl,test_datas); 

    accuracy_svm = length(find(predict_label == test_labels))/length(test_labels);%准确率
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


%求平均准确率
mean_accuracy_svm = sum_accuracy_svm / k;
disp('平均准确率：');   
disp( mean_accuracy_svm);

