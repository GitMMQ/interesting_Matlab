figure('name','������·��ģ��');
axis([-3,12,0,10]);%��������ϵ
hold on  %���ֵ�ǰͼ�ε���������
axis('off'); %�ر��������ע�Ϳ���
%�����ǻ���صĹ���
fill([-1.5,-1.5,1.5,1.5],[1,5,5,1],[0.5,1,1]);%ȷ�������᷶Χ�����
fill([-0.5,-0.5,0.5,0.5],[5,5.5,5.5,5],[0,0,0]); %ȷ�������᷶Χ�����
text(-0.5,1.5,'����');%�������ϱ�ע˵������
text(-0.5,3,'���'); %�������ϱ�ע˵������
text(-0.5,4.5,'����'); %�������ϱ�ע˵������
    %�����ǻ�������·�Ĺ���
plot([0;0],[5.5;6.7],'color','r','linestyle','-','linewidth',4);%���ƶ�άͼ������ʵ�ĺ�ɫ
plot([0;4],[6.7;6.7],'color','r','linestyle','-','linewidth',4); %���ƶ�άͼ����  ʵ�ĺ�ɫΪ����
a=line([4;5],[6.7;7.7],'color','b','linestyle','-','linewidth',4,'erasemode','xor');%��������ɫ
plot([5.2;9.2],[6.7;6.7],'color','r','linestyle','-','linewidth',4);%����ͼ����Ϊ��ɫ
plot([9.2;9.2],[6.7;3.7],'color','r','linestyle','-','linewidth',4);% ����ͼ��������Ϊ����
plot([9.2;9.7],[3.7;3.7],'color','r','linestyle','-','linewidth',4); % ����ͼ���ߺ���Ϊ��ɫ
plot([0;0],[1;0],'color','r','linestyle','-','linewidth',4);%���ϻ���ɫ����
plot([0;10],[0;0],'color','r','linestyle','-','linewidth',4);%���ϻ�����
plot([10;10],[0;3],'color','r','linestyle','-','linewidth',4);%������
%�����ǻ����ݵĹ���
fill([9.8,10.2,9.7,10.3],[3,3,3.3,3.3],[0 0 0]);%ȷ����䷶Χ
plot([9.7,9.7],[3.3,4.3],'color','b','linestyle','-','linewidth',0.5);%���Ƶ���������Ϊ��ɫ
plot([10.3,10.3],[3.3,4.45],'color','b','linestyle','-','linewidth',0.5); %���Ƶ���������Ϊ��ɫ
%����Ϊ��Բ
x=9.7:pi/50:10.3;%��Բ
plot(x,4.3+0.1*sin(40*pi*(x-9.7)),'color','b','linestyle','-','linewidth',0.5); %��Բ
t=0:pi/60:2*pi; %��Բ
plot(10+0.7*cos(t),4.3+0.6*sin(t),'color','b'); %��Բ
    %�����Ǽ�ͷ��ע�͵���ʾ
text(4.5,10,'�����˶�����'); %�������ϱ�ע˵������
line([4.5;6.6],[9.4;9.4],'color','r','linestyle','-','linewidth',4,'erasemode','xor');%���Ƽ�ͷ����
line(6.7,9.4,'color','b','linestyle','>','erasemode','xor','markersize',10);% %���Ƽ�ͷ������
pause(1);
%�����ǿ��رպϵĹ���
t=0;
y=7.7;
while y>6.7 %��·��ѭ�����ƿ��ض�������
    x=4+sqrt(2)*cos(pi/4*(1-t));
    y=6.7+sqrt(2)*sin(pi/4*(1-t));
    set(a,'xdata',[4;x],'ydata',[6.7;y]);
    drawnow;
    t=t+0.1;
end
%�����ǿ��رպϺ�ģ����µ�������Ĺ���
pause(1);
light=line(10,4.3,'color','y','marker','.','markersize',40,'erasemode','xor');%����˿�����Ĺ⣺��ɫ
%�������ĸ�����
h=line([1;1],[5.2;5.6],'color','r','linestyle','-','linewidth',4,'erasemode','xor');
g=line(1,5.7,'color','b','linestyle','^','erasemode','xor','markersize',10);
%��ѭ����ֵ
t=0;
m2=5.7;
n=5.7;
while n<6.3;%ȷ����������ѭ����Χ
  m=1;
  n=0.05*t+5.7;
  set(h,'xdata',[m;m],'ydata',[n-0.5;n-0.1]);
  set(g,'xdata',m,'ydata',n);
  t=t+0.01;
drawnow;
end
t=0;
while t<2;%��ת�Ǵ���ͣ��ʱ��
    m=1.2-0.2*cos((pi/4)*t);
    n=6.3+0.2*sin((pi/4)*t);
   set(h,'xdata',[m-0.5;m-0.1],'ydata',[n;n]);
   set(g,'xdata',m,'ydata',n);
   t=t+0.05;
drawnow;
end
t=0;
while t<0.5 %��ת�Ǻ��ͣ��ʱ��
    t=t+0.5;
    g=line(1.2,6.5,'color','b','linestyle','^','markersize',10,'erasemode','xor');%���Ƶڶ�����ͷ
    g=line(1.2,6.5,'color','b','linestyle','>','markersize',10,'erasemode','xor'); %���Ƶڶ�����ͷ
    set(g,'xdata',1.2,'ydata',6.5);
drawnow;
end
pause(0.5);
t=0;
while m<8 % ȷ���ڶ�����ͷ��ѭ����Χ
    m=1.1+0.05*t;
    n=6.5;
    set(g,'xdata',m+0.1,'ydata',6.5);
    set(h,'xdata',[m-0.4;m],'ydata',[6.5;6.5]);
    t=t+0.05;
drawnow;
end
t=0;
while t<2 %%��ת�Ǻ��ͣ��ʱ��
    m=8.1+0.2*cos(pi/2-pi/4*t);
    n=6.3+0.2*sin(pi/2-pi/4*t);
    set(g,'xdata',m,'ydata',n);
    set(h,'xdata',[m;m],'ydata',[n+0.1;n+0.5]);
    t=t+0.05;
drawnow;
end
t=0;
while t<0.5 %��ת�Ǻ��ͣ��ʱ��
    t=t+0.5;
%���Ƶ�������ͷ
    g=line(8.3,6.3,'color','b','linestyle','>','markersize',10,'erasemode','xor');
    g=line(8.3,6.3,'color','b','linestyle','v','markersize',10,'erasemode','xor');
    set(g,'xdata',8.3,'ydata',6.3);
drawnow;
end

pause(0.5);
t=0;
while n>1 %ȷ����ͷ���˶���Χ
    m=8.3;
    n=6.3-0.05*t;
    set(g,'xdata',m,'ydata',n);
    set(h,'xdata',[m;m],'ydata',[n+0.1;n+0.5]);
    t=t+0.04;
drawnow;
end
t=0;
while t<2%��ͷ����ʼʱ��
    m=8.1+0.2*cos(pi/4*t);
    n=1-0.2*sin(pi/4*t);
    set(g,'xdata',m,'ydata',n);
    set(h,'xdata',[m+0.1;m+0.5],'ydata',[n;n]);
    t=t+0.05;
drawnow;
end
t=0;
while t<0.5
    t=t+0.5;
%���Ƶ��ĸ���ͷ
    g=line(8.1,0.8,'color','b','linestyle','v','markersize',10,'erasemode','xor');
    g=line(8.1,0.8,'color','b','linestyle','<','markersize',10,'erasemode','xor');
    set(g,'xdata',8.1,'ydata',0.8);
drawnow;
end
pause(0.5);
t=0;
while m>1.2 %��ͷ���˶���Χ
    m=8.1-0.05*t;
    n=0.8;
    set(g,'xdata',m,'ydata',n);
    set(h,'xdata',[m+0.1;m+0.5],'ydata',[n;n]);
    t=t+0.04;
drawnow;
end
t=0;
while t<2 %ͣ��ʱ��
    m=1.2-0.2*sin(pi/4*t);
    n=1+0.2*cos(pi/4*t);
    set(g,'xdata',m,'ydata',n);
    set(h,'xdata',[m;m+0.5],'ydata',[n-0.1;n-0.5]);
    t=t+0.05;
drawnow;
end
t=0;
while t<0.5 %���������ͷ
    t=t+0.5;
    g=line(1,1,'color','b','linestyle','<','markersize',10,'erasemode','xor');
    g=line(1,1,'color','b','linestyle','^','markersize',10,'erasemode','xor');
    set(g,'xdata',1,'ydata',1);
drawnow;
end
t=0;
while n<6.3  %ѭ����Χ
    m=1;
    n=1+0.05*t;
    set(g,'xdata',m,'ydata',n);
    set(h,'xdata',[m;m],'ydata',[n-0.5;n-0.1]);
    t=t+0.04;
drawnow;
end
%�����ǿ��ضϿ�������
t=0;
y=6.7;
while y<7.7 %���صĶϿ�
    x=4+sqrt(2)*cos(pi/4*t);
    y=6.7+sqrt(2)*sin(pi/4*t);
    set(a,'xdata',[4;x],'ydata',[6.7;y]);
    drawnow;
    t=t+0.1;
end
pause(0.5);%������ʱ����
nolight=line(10,4.3,'color','y','marker','.','markersize',40,'erasemode','xor');
end