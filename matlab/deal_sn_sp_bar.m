%pos=zeros(11,3);
sn1=zeros(11,1);
sp1=zeros(11,1);
acc1=zeros(11,1);
pre1=zeros(11,1);
mcc1=zeros(11,1);
sn2=zeros(11,1);
sp2=zeros(11,1);
acc2=zeros(11,1);
pre2=zeros(11,1);
mcc2=zeros(11,1);
for i=1:11

   j=1;
    A1=auc_seq_ip{i,3};%sp
    B1=auc_seq_ip{i,2};%sn
    C1=auc_seq_ip{i,4};%acc
    D1=auc_seq_ip{i,5};%pre
    F1=auc_seq_ip{i,6};%mcc
    for jj=1:1961
        ABS(jj,1)=abs(A1(jj,1)-0.99);
    end
    [m,n]=min(ABS);
    
    sp1_seq_ip(i,j)=A1(n,1);
    sn1_seq_ip(i,j)=B1(n,1);
    acc1_seq_ip(i,j)=C1(n,1);
    pre1_seq_ip(i,j)=D1(n,1);
    mcc1_seq_ip(i,j)=F1(n,1);
   end
for i=1:11

   j=1;
    A1=auc_seq_ip{i,3};%sp
    B1=auc_seq_ip{i,2};%sn
    C1=auc_seq_ip{i,4};%acc
    D1=auc_seq_ip{i,5};%pre
    F1=auc_seq_ip{i,6};%mcc
    for jj=1:1961
        ABS(jj,1)=abs(A1(jj,1)-0.95);
    end
    [m,n]=min(ABS);
    
    sp2_seq_ip(i,j)=A1(n,1);
    sn2_seq_ip(i,j)=B1(n,1);
    acc2_seq_ip(i,j)=C1(n,1);
    pre2_seq_ip(i,j)=D1(n,1);
    mcc2_seq_ip(i,j)=F1(n,1);
   end
% end

for i=1:11
    data{i,1}=[sn1(i,1) sn1_seq_ip(i,1);acc1(i,1) acc1_seq_ip(i,1); pre1(i,1) pre1_seq_ip(i,1);mcc1(i,1) mcc1_seq_ip(i,1)];
end
for i=1:11
    data1{i,1}=[sn2(i,1) sn2_seq_ip(i,1);acc2(i,1) acc2_seq_ip(i,1); pre2(i,1) pre2_seq_ip(i,1);mcc2(i,1) mcc2_seq_ip(i,1)];
end
load namemap;
%for i=1:11
subplot(4,2,1);
b = bar(data{2,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
%set(gca,'XTickLabel',{'sn','acc','pre','mcc'})
%legend('ађСа+interaction','ађСа');
title('Sp>99.0%');
ylabel('AGC');
%saveas(gcf,['.\',num2str(i),'.png']);
%end

subplot(4,2,2);
b = bar(data1{2,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
title('Sp>95.0%');

subplot(4,2,3);
b = bar(data{3,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
ylabel('Atypical');
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
% title('CMGC');

subplot(4,2,4);
b = bar(data1{3,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
% title('STE');

 subplot(4,2,5);
b = bar(data{8,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
ylabel('OTHER');

subplot(4,2,6);
b = bar(data1{8,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);

subplot(4,2,7);
b = bar(data{9,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
ylabel('O-GalNAc');

% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
subplot(4,2,8);
b = bar(data1{9,1});
ch = get(b,'children');
set(gca,'XTickLabel',{'Sn','Acc','Pre','MCC'});
% set(ch,'FaceVertexCData',[0 0 1;0 1 1;1 0 1]);
% legend('Proposed','PPSP','GPS');  

















        