for m=100:999
m1=fix(m/100);           %��m�İ�λ����
m2=rem(fix(m/10),10);   %��m��ʮλ����
m3=rem(m,10);             %��m�ĸ�λ����
if m==m1*m1*m1+m2*m2*m2+m3*m3*m3
disp(m)
end
end
