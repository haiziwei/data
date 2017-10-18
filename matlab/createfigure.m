function createfigure(name,format, handle)
%CREATEFIGURE(X1, Y1)
%  X1:  x ���ݵ�ʸ��
%  Y1:  y ���ݵ�ʸ��
 
%  �� MATLAB �� 20-Aug-2014 01:53:41 �Զ�����
 a = open(name);
 h = get(a, 'children');
 h = get(h(2), 'children');
 data = get(h, {'xdata', 'ydata'});
 X1 = data{1};
 Y1 = data{2};
 close(a);
 hold on;
% ���� plot
plot(handle, X1,Y1, format);
 
% ���� xlabel
xlabel('False Positive');
 
% ���� ylabel
ylabel('True Positive');
 
% ���� legend
%legend(num2str(name));
end
