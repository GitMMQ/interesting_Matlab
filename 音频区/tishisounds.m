% ��ʱ��������Ҫ��matlab������ʾ������ô���أ�

%������matlab����soundʵ�֡��ú����������������Ƶ��������������Ƶ�ʺ�ת��λ����

%���ǿ����Լ�дЩ�������ݡ����������������Ƶ���йأ����Ⱥ����ݳ����йأ�
sound(sin(2*pi*25*(1:4000)/100));
pause(1);
sound(sin(2*pi*25*(1:4000)/100));%������
load chirp%����
sound(y,Fs)
%����
load gong
sound(y,Fs)
%����·��
load handel
sound(y,Fs)
%Ц��
load laughter
sound(y,Fs)
%ž����
load splat
sound(y,Fs)
%��
load train
sound(y,Fs)
%����������wavread����һ����Ƶ��wavplay������sound���������ǲ��������õġ�wav��϶�����wav��ʽ��Ƶ��