[X,Y,Z]=peaks(30); 
surf(X,Y,Z)
axis([-3,3,-3,3,-10,10])
axis off;
shading interp;
colormap(hot);
m=moviein(20);            %����һ��20�д����
for i=1:20
view(-37.5+24*(i-1),30)      %�ı��ӵ�
m(:,i)=getframe;            %��ͼ�α��浽m����
end 
movie(m,2);                 %���Ż���2��
