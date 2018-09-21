h=figure('numbertitle','off','name','����������ʾ(�Ұں���)����Matlabsky')
%���ƺ���
plot([-0.2;0.2],[0;0],'-k','linewidth',20);
%����ʼλ�õĵ���
g=0.98;%�������ٶ�,���Ե��ڰڵİ���
l=1;%�ڳ�
theta0=pi/4;%��ʼ�Ƕ�
x0=l*sin(theta0);%��ʼx����
y0=-l*cos(theta0);%��ʼy����
axis([-0.75,0.75,-1.25,0]);
axis off
%�����ڴ�
%����ģʽΪxor
head=line(x0,y0,'color','r','linestyle','.','erasemode','xor','markersize',40);
%�����ڸ�
body=line([0;x0],[-0.05;y0],'color','b','linestyle','-','erasemode','xor');
%�ڵ��˶�
t=0;%ʱ�����
dt=0.01;%ʱ������
while 1
t=t+dt;
theta=theta0*cos(sqrt(g/l)*t);%���ڽǶ���ʱ��Ĺ�ϵ
x=l*sin(theta);
y=-l*cos(theta);
if ~ishandle(h),return,end
set(head,'xdata',x,'ydata',y);%�ı�����������������
set(body,'xdata',[0;x],'ydata',[-0.05;y]);
drawnow;%ˢ����Ļ
end