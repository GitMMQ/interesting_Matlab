clc;
clear;
%https://blog.csdn.net/sinat_34820292/article/details/77624198 
%MATLAB����֪����֪ʶ

A = [1 2 3 4;5 6 7 8;9 10 11 12];
A(:,2:3)
A(2:end,:)
A([1 3 5; 7 9 10])
A(A>4)
A(find(mod(A,2)==0))
A(:)
reshape(A,4,3)%reshape�ǰ��ж�ȡ��Ȼ���аڷ�
B=[A A]; 
%  A ���еĽű��ļ�������function�ؼ��ֵ�m�ļ����Ϳ���̨����һ�����������������һ���֮Ϊworkspace��������
% B ÿ���������е�����������(��ʱ�������ϵĺ����ļ���ͷ��clear������ݾ��ú�����)
% ע�⣺����B�Ǿֲ�������A��ȫ�ֱ����Ĺ�ϵ����Ϊ������û�취ֱ��ʹ�ù������ı���
% 
% rand,mod,round,floor,ceil,mode,plot,solve,dsolve,eval,subs,disp,fprintf,zeros,ones,magic,sort,sortrows,max,min,isempty��
% 
% clear,save,load,clc,tic,toc,close��

%{
���󣨽ṹ�壩��Ԫ���������������

A.title=�����⡯
A.xlabel=��ʱ�䡯
A.ylabel=��������
A.A = A

c{1} = 1
c{2} = [1 2]
c{3} = 1==1
c{4} = ��aaa��
%}
% 
% plot,ezplot,title, xlabel, ylabel, axis�� hold, grid, subplot, ������ϵͳѧһ��matlab gui, �������ܶ�����˼�Ķ�������ģ��ʵ��,matlab��gui��֧��latex��ʽ�﷨
%{
���ݵ���
xlsread
importdata
fopen
ls
xlswrite
load
save
char
%}


% ���ù�����
% 
% cftool
% wavemenu
% plottools
% guide


����������Ҫ�ĺ���

% �ٶ�����������matlabʵ�ֵĹ����磺matlab ��ô����ʱ��
% doc
% help
%{
�ҵ������ܽ�����֡�����CDJ������Ϊ���У�
�裺����������������Ҳ������
�㣺�㷨Ҳ����ѧ��ģҲ������
C��C#����ľ
D��DELPHI����ˮ
J��JAVA������
����������˼�����ǡ��㡱���ֳַ�����
�𣺡����ݽṹ��PDF��Ҫ��Ҫ��ϰ���䣬�Ƿ�����
ľ�����Ŵ��㷨���͡��㷨������PDFҪ��Ҫ�����о�
ˮ����ѧ��ģ����̳̫���˽�
���и�ԭ������ͱ�������ȼ���Ӧ����ѧʵ��ֵ���о���
����MATLAB�Ͳ��پ���ͳ�����δ���ã���������EXCEL�ĵ��������ȹ��� 
%}



