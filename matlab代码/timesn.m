%*************************************************
%S����timesn.m��������������n��
%*************************************************
function [sys,x0,str,ts]=timesn(t,x,u,flag,n)
switch flag,
case 0                            %��ʼ��
[sys,x0,str,ts]=mdlInitializeSizes;
case 3                            %���������
sys=mdlOutputs(t,x,u,n);
case {1,2,4,9}                     %δʹ�õ�flag ֵ
sys=[];
otherwise                         %������
error(['Unhandle flag=',num2str(flag)]);
end
%*************************************************
%mdlInitializeSizes����flagΪ0 ʱ��������ϵͳ�ĳ�ʼ��
%*************************************************
function [sys,x0,str,ts]=mdlInitializeSizes(T)
%���ú���simsizes�Դ����ṹ��sizes
sizes=simsizes;
%�ó�ʼ����Ϣ���ṹ��sizes
sizes.NumContStates=0;        %������״̬
sizes.NumDiscStates=0;        %����ɢ״̬
sizes.NumOutputs=1;          %��һ�������
sizes.NumInputs=1;            %��һ�������ź�
sizes.DirFeedthrough=1;        %������к���������
sizes.NumSampleTimes=1;      %������������
%��������������趨ϵͳ��ʼ������
sys=simsizes(sizes);
%���������ز�����ֵ��
x0=[0;0];                    %���ó�ʼ״̬Ϊ��״̬
str=[];                       %��str��������Ϊ���ַ���
ts=[-1,0];                     %�ٶ��̳������źŵĲ�������
%��ʼ���ӳ������
%*************************************************
%mdlOutputs����flagֵΪ3ʱ�����������
%*************************************************
function sys=mdlOutput(t,x,u,n)
sys=n*u;
%����������ӳ��������
