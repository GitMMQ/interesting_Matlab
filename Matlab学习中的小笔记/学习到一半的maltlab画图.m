%¼�Ƶ�Ӱ����
for i=1:6
%
%�����������ǵĻ�ͼ����
%
draw_human;
save i.mat i;
M(i) = getframe;
end
movie(M)
movie2avi(M,dianying);
%��֡��ʾ����
f = getframe(gcf);
colormap(f.colormap);
image(f.cdata); 
