%��һ��͸����ƽ��
y=x;
[x,y]=meshgrid(x,y)
z=x*0;
%[x,y,z]=sphere(20)
surf(x,y,z);
shading interp
set(gca,'ZLim',[-100 100])
axis equal
alpha(0.6)