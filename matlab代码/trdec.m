function dec=trdec(n,b)
ch1='0123456789ABCDEF';    %ʮ�����Ƶ�16������
k=1;
while n~=0                  %���ϳ�ĳ���ƻ���ȡ��ֱ����Ϊ0
   p(k)=rem(n,b);
   n=fix(n/b);
   k=k+1;
end
k=k-1;
strdec='';
while k>=1                   %�γ�ĳ���������ַ���
   kb=p(k);
   strdec=strcat(strdec,ch1(kb+1:kb+1));
   k=k-1;
end
dec=strdec;
