function f=fxy(x,y)
global ki;
ki=ki+1;              %ki����ͳ�Ʊ��������ĵ��ô���
f=exp(-x.^2/2).*sin(x.^2+y);
