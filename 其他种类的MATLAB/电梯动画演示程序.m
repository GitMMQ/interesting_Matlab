%���ݶ�����ʾ����
figure('name','�Կص���');
axis([-2.0,15.0,-2.0,15.0])
hold on
fill([-2,15,15,-2],[-2,-2,15,15],[0.5,0.2,0.3]);
x1=[8 8 10 10];
y1=[6 0 0 6];
x2=[10 10 12 12];
text(-1,8,'����','fontsize',10,'color','c');
text(4,8,'�½�','fontsize',10,'color','c');
text(6,12.5,'���Ƶ��','fontsize',10,'color','c');
text(12.5,3,'����','fontsize',10,'color','c');
text(5,4.5,'�ر�','fontsize',10,'color','c');
text(5,1.5,'��','fontsize',10,'color','c');  
l1=line([2;5.5],[11;11],'color','c','linestyle','-','linewidth',2);
l2=line([2;2],[9;11],'color','c','linestyle','-','linewidth',2);
l3=line([1;1],[7;9],'color','c','linestyle','-','linewidth',2);
l4=line([3;3],[7;9],'color','c','linestyle','-','linewidth',2);
l5=line([1;3],[9;9],'color','c','linestyle','-','linewidth',2);%���Ƶ���
k1=line([2;1],[6;7],'color','r','linestyle','-','linewidth',2);%����˫������
k2=line([4;5],[3;4],'color','b','linestyle','-','linewidth',2);%����˫������
g1=line([7.7;8],[3;3],'color','b','linestyle','-','linewidth',2);
g2=line([7.7;7.7],[3;4],'color','b','linestyle','-','linewidth',2);
g3=line([7.4;7.7],[2;4],'color','b','linestyle','-','linewidth',2);
g4=line([7.4;7.4],[2;4],'color','b','linestyle','-','linewidth',2);
g5=line([7.1;7.4],[2;4],'color','b','linestyle','-','linewidth',2);
g6=line([7.1;7.1],[2;4],'color','b','linestyle','-','linewidth',2);
g7=line([6.8;7.1],[2;4],'color','b','linestyle','-','linewidth',2);
g8=line([6.8;6.8],[2;4],'color','b','linestyle','-','linewidth',2);
g9=line([6.5;6.8],[2;4],'color','b','linestyle','-','linewidth',2);
g10=line([6.5;6.5],[2;3],'color','b','linestyle','-','linewidth',2);
g11=line([6.0;6.5],[3;3],'color','b','linestyle','-','linewidth',2);
g12=line([6;6],[2;4],'color','c','linestyle','-','linewidth',2);
g13=line([5;6],[2;2],'color','c','linestyle','-','linewidth',2);
g14=line([5;6],[4;4],'color','c','linestyle','-','linewidth',2);%���Ƶ������������ƿ���
door1=patch(x1,y1,[0 1 1]);
door2=patch(x2,y1,[0 1 1]);%�����ݵ�������
t=0:pi/100:2*pi;
fill(6+0.5*sin(t),11+cos(t),[0.7,0.85,0.9]);%������
fill(8.5+0.5*sin(t),11+cos(t),[0.7,0.85,0.9]);%����Ҷ�
e0=line([9;10],[11;11],'color','r','linewidth',2);%
e1=line([10;10],[6;11],'color','b','linewidth',2);%���ӵ������͵��ݵ���
%������ı��棨�ð˸���ͬ��ɫ���ߴ��棬ÿ��֮�����pi/4��
%Ϊ����������ʼ�����¿ɽ��˸��߷ֳ�������ڵ���Ķ��˺͵׶�
s1=line([6;8.5],[12;12],'color','c','linestyle','-','linewidth',2);
s2=line([6;8.5],[10;10],'color','m','linestyle','-','linewidth',2);
s3=line([6;8.5],[12;12],'color','b','linestyle','-','linewidth',2);
s4=line([6;8.5],[10;10],'color','w','linestyle','-','linewidth',2);
s5=line([6;8.5],[12;12],'color','k','linestyle','-','linewidth',2);
s6=line([6;8.5],[10;10],'color','g','linestyle','-','linewidth',2);
s7=line([6;8.5],[12;12],'color','r','linestyle','-','linewidth',2);
s8=line([6;8.5],[10;10],'color','b','linestyle','-','linewidth',2);
a=0;    %�趨�����ת�ĳ�ʼ�Ƕ�
da=0.05;%�趨�����ת������
s=0;    %�趨���˶��ĳ�ʼ����
ds=0.05;%�趨���˶�������
while s<5    %�������ʽ  (��0<s<5ʱ�������ת,������)
a=a+da;
  xa1=6+abs(0.5*sin(a)); %�����˶����������ʱ�Ḳ�ǵ����ˣ���abs�ɽ����һ������ǿ�����)
  xa2=8.5+0.5*sin(a);
  ya1=11+cos(a);
  ya2=11+cos(a);%�趨s1�����˵����꣨s1�Ƕ�Ӧ0���ߣ�
  xb1=6+0.5*abs(sin(a+pi));
  xb2=8.5+0.5*sin(a+pi);
  yb1=11+cos(a+pi);
  yb2=11+cos(a+pi); %�趨s2�����˵����꣨s2�Ƕ�Ӧpi���ߣ�
  xc1=6+abs(0.5*sin(a+pi/2));
  xc2=8.5+0.5*sin(a+pi/2);
  yc1=11+cos(a+pi/2);
  yc2=11+cos(a+pi/2);%�趨s3�����˵����꣨s3�Ƕ�Ӧpi/2���ߣ�
  xd1=6+0.5*abs(sin(a-pi/2));
  xd2=8.5+0.5*sin(a-pi/2);
  yd1=11+cos(a-pi/2);
  yd2=11+cos(a-pi/2);%�趨s4�����˵����꣨s4�Ƕ�Ӧ-pi/2���ߣ�
  xe1=6+abs(0.5*sin(a+pi/4));
  xe2=8.5+0.5*sin(a+pi/4);
  ye1=11+cos(a+pi/4);
  ye2=11+cos(a+pi/4);%�趨s5�����˵����꣨s5�Ƕ�Ӧpi/4���ߣ�
  xf1=6+0.5*abs(sin(a+pi*3/4));
  xf2=8.5+0.5*sin(a+pi*3/4);
  yf1=11+cos(a+pi*3/4);
  yf2=11+cos(a+pi*3/4);%�趨s6�����˵����꣨s6�Ƕ�Ӧpi*3/4���ߣ�
  xg1=6+abs(0.5*sin(a-pi*3/4));
  xg2=8.5+0.5*sin(a-3*pi/4);
  yg1=11+cos(a-3*pi/4);
  yg2=11+cos(a-3*pi/4);%�趨s7�����˵����꣨s7�Ƕ�Ӧ-3*pi/4���ߣ�
  xh1=6+0.5*abs(sin(a-pi/4));
  xh2=8.5+0.5*sin(a-pi/4);
  yh1=11+cos(a-pi/4);
  yh2=11+cos(a-pi/4);  %�趨s8�����˵����꣨s8�Ƕ�Ӧ-pi/4���ߣ�
  set(s1,'xdata',[xa1;xa2],'ydata',[ya1;ya2]);
  set(s2,'xdata',[xb1;xb2],'ydata',[yb1;yb2]);
  set(s3,'xdata',[xc1;xc2],'ydata',[yc1;yc2]);
  set(s4,'xdata',[xd1;xd2],'ydata',[yd1;yd2]);
  set(s5,'xdata',[xe1;xe2],'ydata',[ye1;ye2]);
  set(s6,'xdata',[xf1;xf2],'ydata',[yf1;yf2]);
  set(s7,'xdata',[xg1;xg2],'ydata',[yg1;yg2]);
  set(s8,'xdata',[xh1;xh2],'ydata',[yh1;yh2]); %���Ƶ��������������˶�
  s=s+ds;
  set(door1,'xdata',x1,'ydata',[6+0.5*s 0+0.5*s 0+0.5*s 6+0.5*s]);
  set(door2,'xdata',x2,'ydata',[6+0.5*s 0+0.5*s 0+0.5*s 6+0.5*s]); %�����ŵ������˶�
  set(e1,'xdata',[10;10],'ydata',[6+0.5*s;11]);  %�����Ŷ��������������˶�
  set(gcf,'doublebuffer','on');%������
  drawnow;
  end
b=0;%�趨�����ת������
db=0.05;
while s<10    %�������ʽ  (��5<s<10ʱ�������ת�����½�)
b=b-db;
  xa1=6+abs(0.5*sin(a+b));
  xa2=8.5+0.5*sin(a+b);
  ya1=11+cos(a+b);
  ya2=11+cos(a+b);%�趨s1�����˵����꣨s1�Ƕ�Ӧ0���ߣ�
  xb1=6+0.5*abs(sin(a+pi+b));
  xb2=8.5+0.5*sin(a+pi+b);
  yb1=11+cos(a+pi+b);
  yb2=11+cos(a+pi+b);%�趨s2�����˵����꣨s2�Ƕ�Ӧpi���ߣ�
  xc1=6+abs(0.5*sin(a+pi/2+b));
  xc2=8.5+0.5*sin(a+pi/2+b);
  yc1=11+cos(a+pi/2+b);
  yc2=11+cos(a+pi/2+b);%�趨s3�����˵����꣨s3�Ƕ�Ӧpi/2���ߣ�
  xd1=6+2*abs(sin(a-pi/2+b));
  xd2=8.5+0.5*sin(a-pi/2+b);
  yd1=11+cos(a-pi/2+b);
  yd2=11+cos(a-pi/2+b);%�趨s4�����˵����꣨s4�Ƕ�Ӧ-pi/2���ߣ�
  xe1=6+abs(0.5*sin(a+pi/4+b));
  xe2=8.5+0.5*sin(a+pi/4+b);
  ye1=11+cos(a+pi/4+b);
  ye2=11+cos(a+pi/4+b);%�趨s5�����˵����꣨s5�Ƕ�Ӧpi/4���ߣ�
  xf1=6+0.5*abs(sin(a+pi*3/4+b));
  xf2=8.5+0.5*sin(a+pi*3/4+b);
  yf1=11+cos(a+pi*3/4+b);
  yf2=11+cos(a+pi*3/4+b);%�趨s6�����˵����꣨s6�Ƕ�Ӧpi*3/4���ߣ�
  xg1=6+abs(0.5*sin(a-pi*3/4+b));
  xg2=8.5+0.5*sin(a-3*pi/4+b);
  yg1=11+cos(a-3*pi/4+b);
  yg2=11+cos(a-3*pi/4+b);%�趨s7�����˵����꣨s7�Ƕ�Ӧ-3*pi/4���ߣ�
  xh1=6+0.5*abs(sin(a-pi/4+b));
  xh2=8.5+0.5*sin(a-pi/4+b);
  yh1=11+cos(a-pi/4+b);
  yh2=11+cos(a-pi/4+b);%�趨s8�����˵����꣨s8�Ƕ�Ӧ-pi/4���ߣ�
  %���Ƶ��������������˶�
  set(s1,'xdata',[xa1;xa2],'ydata',[ya1;ya2]);
  set(s2,'xdata',[xb1;xb2],'ydata',[yb1;yb2]);
  set(s3,'xdata',[xc1;xc2],'ydata',[yc1;yc2]);
  set(s4,'xdata',[xd1;xd2],'ydata',[yd1;yd2]);
  set(s5,'xdata',[xe1;xe2],'ydata',[ye1;ye2]);
  set(s6,'xdata',[xf1;xf2],'ydata',[yf1;yf2]);
  set(s7,'xdata',[xg1;xg2],'ydata',[yg1;yg2]);
  set(s8,'xdata',[xh1;xh2],'ydata',[yh1;yh2]);
  s=s+ds;
  set(k1,'xdata',[2;3],'ydata',[6;7]);   %����բ���Ļ����˶�
  set(door1,'xdata',x1,'ydata',[11-0.5*s 5-0.5*s 5-0.5*s 11-0.5*s]);
  set(door2,'xdata',x2,'ydata',[11-0.5*s 5-0.5*s 5-0.5*s 11-0.5*s]);%�����ŵ������˶�
  set(e1,'xdata',[10;10],'ydata',[11-0.5*s;11]);  %�����Ŷ������������˶�
  set(gcf,'doublebuffer','on');%������
  drawnow;
  end
  for i=1:400
    a1=10-0.005*i;
    a2=10+0.005*i;
    x1=[8 8 a1 a1];
    x2=[a2 a2 12 12];
    set(door1,'xdata',x1);
    set(door2,'xdata',x2);
    set(k2,'xdata',[4;5],'ydata',[3;2]); %����բ���Ļ����˶�
    set(gcf,'doublebuffer','on');%������
    drawnow;
    end %���Ƶ����ŵĴ��˶�
  for i=1:400
    a3=8+0.005*i;
    a4=12-0.005*i;
    x1=[8 8 a3 a3];
    x2=[a4 a4 12 12];
    set(door1,'xdata',x1);
    set(door2,'xdata',x2);
    set(k2,'xdata',[4;5],'ydata',[3;4]); %����բ���Ļ����˶�
    set(gcf,'doublebuffer','on');%������
    drawnow;
    end %���Ƶ����ŵĹر��˶�