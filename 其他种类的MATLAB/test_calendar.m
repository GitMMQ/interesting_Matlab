

function test_calendar(year,month)

% ������ݣ��·ݣ���ӡ����µ�����
run = 0;
ping = 0;
fprintf('\n%s %s %s %s %s %s %s\n',...
    '��','һ','��','��','��','��','��');
% ����ӵ�һ�굽ǰһ��������ƽ��ĸ���
for i =1:year-1
    if (mod(i,4)==0 & mod(i,100)~=0) | mod(i,400)==0
        run = run+1;
    else
        ping = ping+1;
    end
end
% ����ӵ�һ�굽����ǰһ���µ�����
sum = 366*run+365*ping;
for i = 1:month-1
    sum = sum+monthday(year,i);
end
% �������µ�����
n = monthday(year,month);
temp = zeros(n,1);
sum = sum+1;
% ��������µ�һ�������ڼ�
wkd = mod(sum,7);
for i = 1:n
    temp(wkd+i) = i;
end
l = 1;
m = 1;
% ��ӡ����
for i = 1:length(temp)
    if temp(i) ==0
        temp2(l,m) = ' ';
        fprintf('   ');
        m = m+1;
    else
        temp2(l,m) = temp(i);
        if temp(i) >= 10
            fprintf('%d ',temp(i));
        else
            fprintf('%d  ',temp(i));
        end
        m = m+1;
    end
    if mod(i,7)==0
        fprintf('\n');
        m = 1;
        l = l+1;
    end
end
fprintf('\n');

% �����ƽ��ÿ�µ�����

function out = monthday(year,i)
if mod(year,4)==0 & mod(year,100)~=0 | mod(year,400)==0
    data = [31 29 31 30 31 30 31 31 30 31 30 31];
else
    data = [31 28 31 30 31 30 31 31 30 31 30 31];
end
out = data(i);

 %���������룺>> test_calendar(2008,12)���أ�
%�� һ �� �� �� �� ��
  % 1  2  3  4  5  6 
%7  8  9  10 11 12 13
%14 15 16 17 18 19 20
%21 22 23 24 25 26 27
%28 29 30 31


