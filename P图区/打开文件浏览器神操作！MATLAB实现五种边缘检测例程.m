%MATLABʵ�����ֱ�Ե���https://blog.csdn.net/weixin_40202230/article/details/78323404
%���õı�Ե����㷨��������˹��Ե����㷨��Robert��Ե������ӡ�Sobel��Ե������ӡ�Prewitt��Ե������ӡ�Canny��Ե������ӡ�

[filename,pathname]=uigetfile({'*.jpg';'*bmp';'*gif'},'ѡ��ԭͼƬ');%�������������
I = imread([pathname,filename]);
I=rgb2gray(I);

%���ֱ�Ե���
figure('Name','�������ֱ�Ե���');
subplot(2,3,1);
imshow(I);
title('ԭͼ');

BW1=edge(I,'Roberts',0.16);
subplot(2,3,2);
imshow(BW1);
title('Robert���ӱ�Ե���')
 
BW2=edge(I,'Sobel',0.16);
subplot(2,3,3);
imshow(BW2);
title('Sobel���ӱ�Ե���')
 
BW3=edge(I,'Prewitt',0.06);
subplot(2,3,4);
imshow(BW3);
title('Prewitt���ӱ�Ե���');
 
BW4=edge(I,'LOG',0.012);
subplot(2,3,5);
imshow(BW4);
title('LOG���ӱ�Ե���')
 
BW5=edge(I,'Canny',0.35);
subplot(2,3,6);
imshow(BW5);

title('Canny���ӱ�Ե���')







