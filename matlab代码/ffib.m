function f=ffib(n)
%������Fibonacci���еĺ����ļ�
     %f=ffib(n)
%2004��9��30�ձ�
if n>2
   f=ffib(n-1)+ffib(n-2);
else
   f=1;
end
