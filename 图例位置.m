��������legend�����Ĳ������д������ã�������ͨ����λ�����Խ��о�ȷ���á�
�������£�
x=0:pi/20:pi;
y=sin(x);
plot(x,y);
grid on;

% ����legend�����Ĳ������д�������
legend('sinx',-1); % λ��ͼ�ο�����
legend('sinx',0); % ���λ��
legend('sinx',1); % ���Ͻ�
legend('sinx',2); % ���Ͻ�
legend('sinx',3); % ���½�
legend('sinx',4); % ���½�

% ����λ�����Խ��о�ȷ����
gca=legend( 'sinx', 4 );
set( gca, 'Position', [10, 50, 100, 400]); % [10, 50, 100, 400]Ϊ��ʾ��λ������ 