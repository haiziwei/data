
    
    title('Fluorouracil');
    set(gca,'xticklabel',{'CR', 'PR', 'SD', 'PD'});
    ylabel('Predicted score');
    
label(strcmp(S(:,4),'Complete Response')==1)=2;  
label(strcmp(S(:,4),'Partial Response')==1)=1;  
label(strcmp(S(:,4),'Stable Disease')==1)=-1;  
label(strcmp(S(:,4),'Clinical Progressive Disease')==1)=-2;  
label=label';
X=zeros(length(S),1);
Y=cell(length(S),1);
X=[result(label==2);result(label==1);result(label==-1);result(label==-2)];
Y=[repmat({'Complete Response'},length(result(label==2)),1);repmat({'Partial Response'},length(result(label==1)),1);repmat({'Stable Disease'},length(result(label==-1)),1);repmat({'Clinical Progressive Disease'},length(result(label==-2)),1)];
boxplot(X,Y);
%二类盒图
label(strcmp(S(:,4),'Complete Response')==1)=1;  
label(strcmp(S(:,4),'Partial Response')==1)=1;  
label(strcmp(S(:,4),'Stable Disease')==1)=-1;  
label(strcmp(S(:,4),'Clinical Progressive Disease')==1)=-1;  
X=zeros(length(S),1);
Y=cell(length(S),1);
X=[result(label==1);result(label==-1)];
Y=[repmat({'Responder'},length(result(label==1)),1);repmat({'Non-reponder'},length(result(label==-1)),1)];
boxplot(X,Y);

%计算p值：
A=result(clinical_filtered==1);
B=result(clinical_filtered==0);
[h,p]=ttest2(A,B);

S2=S1(strcmp(S1(:,3),'Cisplatin')==1,:);
for n=1:192
    k=S2(strcmp(S2(:,2),S_cis(n,2))==1,:);
    S(n,:)=k(1,:);
end

%单癌症生存期-打分图
a=cis_stad;
a=a(:,5:6);
for n=length(a):-1:1
    if isempty(a{n,1})==1
        a(n,:)=[];
    end
end

a=cell2mat(a);
for n=length(a):-1:1
        if a(n,1)==0
            a(n,:)=[];
        end
end
x=a(:,2);
y=a(:,1);
p = polyfit(x,y,1) ;
plot(x,y,'.',x,polyval(p,x));
title('Cisplatin STAD');
xlabel('Predicted score');
ylabel('Overall survival(months)');
[h,p]=ttest(x,y);
c=regress(x,y,A);

    