%https://mp.weixin.qq.com/s/PQxSp-_lvgMOkZ2wK6ro8g
n=100;
x=linspace(-3,3,n); %����help linspace������0.0
y=linspace(-3,3,n);
z=linspace(-3,3,n);
[X,Y,Z]=ndgrid(x,y,z);
F=((-(X.^2).*(Z.^3) -(9/80).*(Y.^2).*(Z.^3))+((X.^2)+(9/4).*(Y.^2)+(Z.^2)-1).^3); 
%���ͺ�����������(ͬ�ô�ѧ��)-��¼�����ǲ��ǻ���������ʲô...
isosurface(F,0)
lighting phong
caxis  
axis equal
axis off
colormap('flag'); %��ɫ
set(0,'defaultfigurecolor','w')
%���ñ���Ϊ��ɫ
j=0
for i=60:20:420
view([i 30]); %�ӽ�
j=j+1;
saveas(gcf,[num2str(j) '.jpg'])
end


tr = strcat(num2str(i), '.jpg');
    A=imread(str);
    [I,map]=rgb2ind(A,256);
    %��Ϊ GIF �ļ���֧����ά���ݣ�����Ӧ���� rgb2ind��ʹ����ɫͼ map ��ͼ���е� RGB ����ת��Ϊ����ͼ�� A
    if(i==1)
        imwrite(I,map,filename,'DelayTime',0.1,'LoopCount',Inf)
    else
        imwrite(I,map,filename,'WriteMode','append','DelayTime',0.3)
        %%imwrite �� GIF �ļ�д�����ĵ�ǰ�ļ��С�����-ֵ���� 'LoopCount',Inf ʹ��������ѭ����
        %%'DelayTime',0.11 ��ÿ������ͼ����ʾ֮��ָ����0.1���ʱ�͡�
    end
end