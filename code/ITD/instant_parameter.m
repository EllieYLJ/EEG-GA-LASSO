function [amp_matrix,pha_matrix,freq_matrix]=instant_parameter(H_matrix)
[M,N]=size(H_matrix);
for k=1:M
   [H_ex_num(k),H_ex_local(k,1:H_ex_num(k))]=extrema_1(H_matrix(k,:));  
end
for k=1:M
    amp_matrix(k,:)=single_amplitude2(H_matrix(k,:),H_ex_local,H_ex_num,k); %瞬时幅值
    pha_matrix(k,:)=single_phase(H_matrix(k,:),H_ex_local,H_ex_num,k); %瞬时相位
    for j=1:length(pha_matrix(k,:))-1
%         freq_matrix(k,j)=(1/(2*pi))*(pha_matrix(k,j+1)-pha_matrix(k,j));    %差分法求瞬时频率
        freq_matrix(k,:)=(1/(2*pi))*diff(pha_matrix(k,:));
    end
   %freq_matrix(k,:)=(1/(2*pi))*diff(pha_matrix(k,:));%瞬时频率
end
end