addpath(genpath('F:\实验室\课题（新数据）\正文\代码\matlab'));%file path

mat_cn_update = normalizemeanstd(data_CNA);
mat_gene_update = normalizemeanstd(data_exp);
mat_meth_update = normalizemeanstd(data_methy);

update_data = [mat_cn_update, mat_gene_update, mat_meth_update];

clinical_filtered=cell2mat(drugresponse(:,4));
class = clinical_filtered;
class(class==0)=-1;
indcs=indc(length(class));%The samples are divided into 10 groups in 10-fold cross-validation.
%% mkl cv
ratio=length(update_data);
result = zeros(size(class));
for i=1:10
    i
    test = indcs == i;
    [result(test, :), ~] = mklclassify(update_data(~test, :), class(~test, :), update_data(test, :), class(test, :), 300,length(data_CNA),length(data_exp));
end
fastAUC((clinical_filtered(:,1)+1)/2==1, result, 1, strcat(num2str(ratio), '_mkl_big_h'))