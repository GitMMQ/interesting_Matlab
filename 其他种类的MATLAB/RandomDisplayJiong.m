function RandomDisplayJiong()
close all;clear all;clc;
axis off; % ����ʾ������
set(gcf,'color',[0 0 0]); 
% ���ñ�����ɫΪ��ɫ
set(gcf,'numberTitle','off','name','�����ͼ'); % �������
set(gcf,'menubar','none','toolbar','none','Resize','off'); 
% ����ʾ menubar �� toolbar, ���ɸı��С
for k = 1:100 % 100��ѭ��
% ���һ��"��"���ı���, ɫ�ʴ�С��ת���
h = text(rand(),rand(),'��','color',rand(1,3),'Rotation',...
rand()*360,'fontname','����','fontsize',5+20*rand() );
pause(0.1); % ͣ��0.1s
end
end