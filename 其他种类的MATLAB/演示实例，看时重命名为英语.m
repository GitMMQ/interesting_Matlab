sf_tetris2%����˹����ʵ����������
xpbombs%
vibes%
teapotdemo%
logo%
travel%
life%MATLAB's version of Conway's Game of Life. 
makevase%Generate and plot a surface of revolution. 
truss%Animation of a bending bridge truss. 
codec
%The codec acts like an encoder/decoder for messages
%using the letters of the alphabet
fifteen%A sliding puzzle of fifteen squares and sixteen slots. 
xpquad %Superquadrics plotting demonstration. 
wrldtrv %Show great circle flight routes around the globe. 
spy %Ů�ף��е���С��
cplxdemo%���ӵ�XYZ����ͼ��~���������ƽ��Ч�� 
lorenz % Lorenz�����Ӷ�����ʾ 
%{
solve('x^2+p*x+q=0','x')
 
ans =
 
 - p/2 - (p^2 - 4*q)^(1/2)/2
   (p^2 - 4*q)^(1/2)/2 - p/2
 
pretty(ans)
 
  +-                     -+ 
  |          2       1/2  | 
  |    p   (p  - 4 q)     | 
  |  - - - -------------  | 
  |    2         2        | 
  |                       | 
  |          2       1/2  | 
  |    p   (p  - 4 q)     | 
  |  - - + -------------  | 
  |    2         2        | 
  +-                     -+
%}
% ����ע��: ѡ��Ҫע�͵��������, �༭���˵�Text->Comment, ���߿�ݼ�Ctrl+R
% 
% ȡ��ע��: ѡ��Ҫȡ��ע�͵����, �༭���˵�Text->Uncomment, ���߿�ݼ�Ctrl+T
% 
image
%�ῴ��һ��С�к�
%����ͼƬ�ﻹ����������14��ͼƬ����ЩͼƬ�����������С�к���ͼƬ�����У� ,
% ǰ������MathWorks��Ա���ĳ����������3��ϣ�����ط��������󣬵�����
% MathWorks�������logo���������Ȥ�Ļ����Զ�һ�¿����ߵĲ��ͣ�����н���
% �õ���ЩͼƬ�ķ�����ͼƬ��ص���Ϣ 
syms x;
g=1/(x^2+2*x-3);
ezplot(g,-10,10);
%�庯��

%�鷿����
[X, Y] = meshgrid(0.01:0.01:1, 0.01:0.01:1); 
Zfun =@(x,y)12.5*x.*log10(x).*y.*(y-1)+exp(-((25 ... 
*x - 25/exp(1)).^2+(25*y-25/2).^2).^3)./25; 
Z = Zfun(X,Y); 
figure; 
surf(Y,Z,X,'FaceColor',[1 0.75 0.65],'linestyle','none'); 
hold on 
surf(Y+0.98,Z,X,'FaceColor',[1 0.75 0.65],'linestyle','none'); 
axis equal; 
view([116 30]); 
camlight; 
lighting phong; % ���ù��պ͹���ģʽ 





