hf=figure('name','����Ͳ������');
set(hf,'color','g');

axis([-10,10,-4,4]);
hold on
axis off;   %��������

xa0=-2.5;%�����󶥵�����
xa1=-1.8;%�����Ҷ�������
xb0=-2;%�����󶥵�����
xb1=5;%�����Ҷ�������

x3=5.6;%ת������
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
a1=line([xa0;xa1],[0;0],'color','m','linestyle','-','linewidth',20);   %���û���
a8=line([-2.7;2.3],[0.3;0.3],'color','b','linestyle','-','linewidth',5);%���ô���Ͳ
a9=line([-2.6;2.3],[-0.3;-0.3],'color','b','linestyle','-','linewidth',5);%���ô���Ͳ
a10=line([-2.6;-2.6],[-0.1;-0.37],'color','b','linestyle','-','linewidth',5);%���ô���Ͳ
a11=line([2.0;2.0],[0.1;0.37],'color','b','linewidth',5);%���ô���Ͳ
a12=line([2.0;2.0],[-0.1;-0.37],'color','b','linewidth',5);%���ô���Ͳ
a13=line([-2.6;-2.6],[0.1;0.37],'color','b','linestyle','-','linewidth',5);%���ô���Ͳ
a14=line([-2.7;-2.7],[0.1;-0.1],'color','b','linestyle','-','linewidth',9);%������Ͳ��
a16=line([-3.2;-3.2],[0.1;-0.1],'color','r','linestyle','-','linewidth',25);%������Ͳ��
a2=line([xb0;xb1],[0;0],'color','m','linewidth',5);%��������
a5=line(x5,y5,'color','black','linestyle','.','markersize',25);%�������˻�������ͷ
a4=line(x4,y4,'color','black','linestyle','.','markersize',25);%������������ͷ
a6=line([xb1;x3],[0;0],'color','b','linestyle','-','linewidth',7);%��������������
a7=line(x3,0,'color','m','linestyle','.','markersize',50);%�����˶�����
a3=line(x3,y3,'color' ,[0.5 0.6 0.3],'linestyle','.','markersize',85);%��������
len1=6.8;%���˳�
len2=0.7;%������   
r=1.3;%�˶��뾶
dd=0.01;
d=-4;
plot(d,0,'color','r','marker','.','markersize',10);
pausetime=.0001
s=0;
ds=1;
t=0;
dt=0.015*pi;
   while t<=15.68
             t=t+dt;
          drawnow;
    lena1=sqrt((len1)^2-(r*sin(2*t))^2);%�������˶������к����ϵ���Ч����
    rr1=r*cos(t);%�뾶���˶������к����ϵ���Ч����
    xaa1=x3-sqrt(len1^2-(sin(2*t)*r)^2)-(r*cos(2*t));%�������˶������е��Ҷ�������λ��
    xaa0=xaa1-2;%%�������˶������е��󶥵�����λ��
    x55=x3-cos(2*t)*r;%�������˶������к�����λ��
    y55=y3-sin(2*t)*r*0.32;%�������˶�������������λ��
    set(a4,'xdata',x55,'ydata',y55);%�������˶����˶�
    set(a1,'xdata',[xaa1-0.2;xaa1],'ydata',[0;0]);%���û����˶�
    set(a2,'xdata',[xaa1;x55],'ydata',[0;y55]);
    set(a5,'xdata',xaa1);%���û�������������ͷ���˶�
    set(a6,'xdata',[x55;x3],'ydata',[y55;0]);
       if (sign(y55-y3)>0)
         s=s+ds;
         d=d-dd;
         if s>200
         s=0;
         d=0;
      end
        set(gcf,'doublebuffer','on');%������  
        plot(d,0,'color','r','marker','.','markersize',s);%������
        set(gcf,'doublebuffer','on') %��������   
     pause(pausetime);  %��ͣһ��
     drawnow;
       end
   end
  x=[-8.0 -7.0 -6.0 -5.5 -4.5 -3.5 -3.7 -3  -4 -5.5 -6.5 -7.5 -9.1 -7.3 ];
  y=[-1.8 -1.2 -2.8 -1.5 -2.8 -0.5 -0.7 0.7 0.2 1.5 0.8  1.2 1.9  0.5];
     fill(x,y,'r');   
     text(-6,0,'pa','fontsize',22);