f=inline('sqrt(x.^3+2*x.^2-x+12)+(x+5).^(1/6)+5*x+2');
g=inline('(3*x.^2+4*x-1)./sqrt(x.^3+2*x.^2-x+12)/2+1/6./(x+5).^(5/6)+5');
x=-3:0.01:3;
p=polyfit(x,f(x),5);          %��5�ζ���ʽp���f(x)
dp=polyder(p);                 %����϶���ʽp����dp
dpx=polyval(dp,x);            %��dp�ڼ����ĺ���ֵ
dx=diff(f([x,3.01]))/0.01;   %ֱ�Ӷ�f(x)����ֵ����
gx=g(x);                         %����f�ĵ�����g�ڼ����ĵ���
plot(x,dpx,x,dx,'.',x,gx,'-');   %��ͼ
