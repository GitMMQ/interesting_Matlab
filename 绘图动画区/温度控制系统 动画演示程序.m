hf=figure('name','�¶ȿ���ϵͳ','color',[.96 .96 .96]);%���ñ�������
%���¶ȿ���ϵͳ��֤�¶���60��100���϶�,���¶ȸ���100���϶�ʱ����ʼ��ȴ�����¶ȵ���60��ʱ����ʼ���ȣ��ֱ���ָʾ��ָʾ
axis([-1 1 -1 1]);
axis('off');hold on;
x1=[0.2 0.2 0.4 0.4];
y1=[-0.46 -1 -1 -0.46];
t=-0.46;%�洢�¶�������
k=1;k1=1;%kΪ���б�־λ����k=1ʱ�����У���k=0ʱ��ֹͣ��k1Ϊ�¶����½���־λ����k1=1ʱ���¶�����;��k1=0ʱ���¶��½�
line([0.2;0.2],[1;-1],'color','k','linewidth',2); %���¶��������
line([0.2;0.4],[-1;-1],'color','k','linewidth',2);%���¶������±�
line([0.4;0.4],[1;-1],'color','k','linewidth',2);%���¶������ұ�
line([0.2;0.4],[1;1],'color','k','linewidth',2);%���¶������ϱ�
line([0.4;0.5],[1;1],'color','r','linewidth',2);%�̶ȱ��100
text(0.5,1,'100���϶�','color','r');
line([0.4;0.5],[0.2;0.2],'color','b','linewidth',2);%�̶ȱ��60
text(0.5,0.2,'60���϶�','color','b');
line([0.4;0.5],[-0.46;-0.46],'color','g','linewidth',2);%�̶ȱ��27
text(0.5,-0.46,'����27���϶�','color','g');
pp=line([0.2;0.4],[-0.46;-0.46],'color','r','linewidth',3);
Fun1=plot(-0.95,0.6,'color','k','marker','.','markersize',30);%������ʾ
text(-1,0.5,'����');
Fun2=plot(-0.5,0.6,'color','k','marker','.','markersize',30);%��ȴ��ʾ
text(-0.55,0.5,'��ȴ');
Fun3=plot(-0.95,0.2,'color','k','marker','.','markersize',30);%��Դ����ʾ
text(-1,0.1,'ON');
Fun4=plot(-0.5,0.2,'color','r','marker','.','markersize',30);%��Դ����ʾ
text(-0.53,0.1,'OFF');
text(-0.9,0,'��Դָʾ��');
%ֹͣ��ť
pushbutton1=uicontrol(hf,...
    'units','normalized',...
    'style','pushbutton',...
    'string','ֹͣ',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[0.1 0.3 0.1 0.1],...
    'callback','k=0;');
%�رհ�ť
pushbutton2=uicontrol(hf,...
    'units','normalized',...
    'style','pushbutton',...
    'string','�ر�',...
    'backgroundcolor',[0.75 0.75 0.75],...
    'position',[0.3 0.3 0.1 0.1],...
    'callback','close');
temp=patch(x1,y1,[0 1 1]); %�����³�ʼ�¶�
while k==1    %�����¶��������½�����
        set(Fun4,'color','k');
        set(Fun3,'color','r');
        if k1==1    %�¶�����
            set(Fun1,'color','r');
            set(Fun2,'color','k');
            for i=1:1600
              a=t+(1-t)/1600*i;
              y1=[a -1 -1 a];
              set(temp,'ydata',y1);
              set(pp,'ydata',[a,a]);
              drawnow;
            end
            t=a;
            k1=0;
          else if k1==0     %�¶��½�
            set(Fun1,'color','k');
            set(Fun2,'color','r');
            for i=1:1000
                a=t-(t-0.2)/1000*i;
                y1=[a -1 -1 a];
                set(temp,'ydata',y1);
                set(pp,'ydata',[a,a]);
                drawnow;
            end
            t=a;
            k1=1;
              end
        end
end
set(Fun1,'color','k');  %ֹͣ��ԭ
set(Fun2,'color','k');
    set(Fun3,'color','k');
    set(Fun4,'color','r');