clear;   %���������
clc;     %���������
figure('name','�乤Ժ��׮��');   %���ñ���
axis ([0 ,10,0,10]);   %��������ϵ
hold on;
axis off;   %��������
text(3,9.8,'�乤Ժ��׮��','fontsize',20,'color','r');
%����׮��֧��
c1=line([1;5.5],[ 0.15;0.15],'color','k','linewidth',8);
c2=line([1.7;5.2],[ 1.5;0.15],'color','k','linewidth',4);
c3=line([1.8;5.2],[ 0.1;8],'color','k','linewidth',4);
c4=line([1.7;5.2],[ 1.5;8],'color','k','linewidth',2);
c5=line([1.2;1.8],[ 0.5;0.5],'color','k','linewidth',13);
fill([4.9,5.3,5.3,4.9],[8.0,8.0,0.3,0.3],[1,0.1,0.5]);
fill([4.4,4.6,5.6,5.8,5.6,4.6],[8.4,8.3,8.3,8.4,8.0,8.0],[1,0.1,0.5])
%����׮���˶����ֺ�ˮ��׮
b1=line([8;8],[1;6],'color','b','linewidth',6);
b2=line([5.5,5.5],[7.9,8],'color','k','linewidth',1);
b3=line([5.3,5.55],[7.9,7.9],'color','k','linewidth',3);
b4=line([5.5,5.5],[7.9,6.3],'color','k','linewidth',3);
b5=line([5.5,5.5],[7,6.6],'color','k','linewidth',10);
b6=line([5.5,5.5],[6.6,6.3],'color','k','linewidth',12);
pausetime=1.6;   %������ͣʱ��
pause(pausetime);
%��װˮ��׮
s=0;   
ds=0.01;
pausetime1=.002;
while s<2.5    %ˮ��׮�����ƶ�
      s=s+ds;
      set(b1,'xdata',[8-s;8-s],'ydata',[1;6]);
      pause(pausetime1);
end
pausetime2=1;
pause(pausetime2);
s=0;   
ds=0.01;
while s<1     %ˮ��׮�����ƶ�
     s=s+ds;
     set(b1,'xdata',[5.5;5.5],'ydata',[1-s;6-s]);
     pause(pausetime1);
end
pause(pausetime2);
s=0;   
ds=0.01;
while s<1.3    %��׮���˶�����������ˮ��׮������Ӵ�
      s=s+ds;
      set(b2,'xdata',[5.5;5.5],'ydata',[7.9-s,8]);
      set(b3,'xdata',[5.3;5.55],'ydata',[7.9-s,7.9-s]);
      set(b4,'xdata',[5.5;5.5],'ydata',[7.9-s,6.3-s]);
      set(b5,'xdata',[5.5;5.5],'ydata',[7-s,6.6-s]);
      set(b6,'xdata',[5.5;5.5],'ydata',[6.6-s,6.3-s]);
      pause(pausetime1);
end
%��׮����ʼ��׮
pausetime3=.4;
pause(pausetime2);
s=0;   
ds=0.06;  %�趨��׮����
while s<4
a=0;   
da=0.01;
pausetime4=.0002;                  
while a<.4   %������ѭ�����ô�׮���������·����˶�
     a=a+da;
       set(b5,'xdata',[5.5;5.5],'ydata',[5.7-s+a,5.3-s+a]);
     pause(pausetime4);
end
a=0;   
while a<.4
     a=a+da;
       set(b5,'xdata',[5.5;5.5],'ydata',[6.1-s-a,5.7-s-a]);
     pause(pausetime4);
end
s=s+ds;
%��׮���˶�������ˮ��׮ͬʱ�����ƶ�
set(b1,'xdata',[5.5;5.5],'ydata',[0;5-s]);
set(b2,'xdata',[5.5;5.5],'ydata',[6.6-s,8]);
set(b3,'xdata',[5.3;5.55],'ydata',[6.6-s,6.6-s]);
set(b4,'xdata',[5.5;5.5],'ydata',[6.6-s,5-s]);
set(b5,'xdata',[5.5;5.5],'ydata',[5.7-s,5.3-s]);
set(b6,'xdata',[5.5;5.5],'ydata',[5.3-s,5-s]);
pause(pausetime3);
end