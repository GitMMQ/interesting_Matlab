
%Animation��rotate peak
%by dynamic
%see also http://www.matlabsky.com
%
figure('name','��ά���� ��ת��ɽ�塪��Matlabsky');
%������ά����
[X,Y,Z]=peaks(14); 
surfl(X,Y,Z);        
axis([-4 4 -4 4 -11 11]);      %��������ϵ
axis off;        %ȥ����ά������
shading interp; 
colormap spring; 
m=moviein(13);     %����֡����m
for i=1:12        %��������ͼ��
   view(-37.5+30*(i-1),25); 
    m(:,i)=getframe;    %���񶯻�֡
end 
movie(m);     %�طŶ���

%Animation��rotate paraboloid
%by dynamic
%see also http://www.matlabsky.com
%
h0=figure('name','��ά����  ��ת�����桪��Matlabsky');  
axis([-5 10 -5 10 -10 80])     %��������ϵ
hold on    %���ֵ�ǰͼ�ε���������
%����������������
a=0:0.5:10; 
b=zeros(size(a)); 
c=a.^2;    
theta=pi/20; 
xx=a;      %������ά������������
yy=b;      %������ά������������ 
zz=c;        %������ά�߶�����
%����ת������
for i=1:40 
   M=[tan(i*theta) cos(i*theta) 0;-cos(i*theta) sin(i*theta) 0;0 0 1]; 
   temp=M*[a;b;c];     
   xx(i+1,:)=temp(1,:);yy(i+1,:)=temp(2,:);zz(i+1,:)=temp(3,:);    
   mesh(xx,zz,yy);   %������ά��������
  axis off      %ȥ����ά������
  pause(0.1)   %ÿ����תͣ��0.1��
  if i==26   %������ת����
       break 
   end 
end
