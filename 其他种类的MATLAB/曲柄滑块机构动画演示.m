hf=figure('name','�����������');
set(hf,'color','g');
hold on
axis([-6,6,-4,4]);
grid  on
axis('off');
xa0=-5;%�����󶥵�����
xa1=-2.5;%�����Ҷ�������
xb0=-2.5;%�����󶥵�����
xb1=2.2;%�����Ҷ�������

x3=3.5;%ת������
y3=0;%ת������
x4=xb1;%��������ͷ�ĳ�ʼλ�ú�����
y4=0;%��������ͷ�ĳ�ʼλ��������
x5=xa1;
y5=0;
x6=x3;%���������ʼ������
y6=0;%���������ʼ������
a=0.7;
b=0.7
c=0.7

a1=line([xa0;xa1],[0;0],'color','b','linestyle','-','linewidth',40);   %���û���
a3=line(x3,y3,'color',[0.5 0.6 0.3],'linestyle','.','markersize',300);%����ת��
a2=line([xb0;xb1],[0;0],'color','black','linewidth',10);%��������
a5=line(x5,y5,'color','black','linestyle','.','markersize',40);%�������˻�������ͷ
a4=line(x4,y4,'color','black','linestyle','.','markersize',50);%������������ͷ
a6=line([xb1;x3],[0;0],'color','black','linestyle','-','linewidth',10);
a7=line(x3,0,'color','black','linestyle','.','markersize',50);%�����˶�����
a8=line([-5.1;-0.2],[0.7;0.7],'color','y','linestyle','-','linewidth',5);%�������ױ�
a9=line([-5.1;-0.2],[-0.72;-0.72],'color','y','linestyle','-','linewidth',5);%�������ױ�
a10=line([-5.1;-5.1],[-0.8;0.75],'color','y','linestyle','-','linewidth',5);%�������ױ�
a11=fill([-5,-5,-5,-5],[0.61,0.61,-0.61,-0.61],[a,b,c]);%������������

len1=4.8;%���˳�
len2=2.5;%������
r=1.3;%�˶��뾶
dt=0.015*pi;
t=0;

while 1
    t=t+dt;
if t>2*pi
    t=0;
end
    lena1=sqrt((len1)^2-(r*sin(t))^2);%�������˶������к����ϵ���Ч����
    rr1=r*cos(t);%�뾶���˶������к����ϵ���Ч����
    xaa1=x3-sqrt(len1^2-(sin(t)*r)^2)-(r*cos(t));%�������˶������е��Ҷ�������λ��
    xaa0=xaa1-2.5;%%�������˶������е��󶥵�����λ��
    x55=x3-cos(t)*r;%�������˶������к�����λ��
    y55=y3-sin(t)*r;%�������˶�������������λ��
    set(a4,'xdata',x55,'ydata',y55);%�������˶����˶�
    set(a1,'xdata',[xaa1-2.5;xaa1],'ydata',[0;0]);%���û����˶�
    set(a2,'xdata',[xaa1;x55],'ydata',[0;y55]);
    set(a5,'xdata',xaa1);%���û�������������ͷ���˶�
    set(a6,'xdata',[x55;x3],'ydata',[y55;0]);
    set(a11,'xdata',[-5,xaa0,xaa0,-5]);%������������
    set(gcf,'doublebuffer','on');%������
    drawnow;
end