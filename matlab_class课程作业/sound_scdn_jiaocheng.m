    fs=44100; %ȷ������Ƶ��
    t=0: 1/fs: 0.5; %tΪ����
    c=sin(2*pi*261.63 *t); %����c��Ƶ��Ϊ261.63Hz
     sound(c, fs)
    %һ�����״������
    t=0: 1/fs: 0.5;
    do=sin(2*pi*261.63 *t); 
    re=sin(2*pi*293.66 *t); 
    mi=sin(2*pi*329.63 *t); 
    fa=sin(2*pi*349.23 *t); 
    so=sin(2*pi*392.00 *t); 
    la=sin(2*pi*440.00 *t); 
    ti=sin(2*pi*493.88 *t); 
    Cscale=[do,re,mi,fa,so,la,ti];
    sound(Cscale,fs)
    %Matlab�Դ�������Ч��
        %����
    load chirp
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
    %��������������sound()���༭���������ס�
%     ��������������ô��û�к��ң�
%     ���������ź�Yֻ����һ��N��2N��2�ľ���
%     Ҳ����˵sound()һ��������ͬʱ������������
%     ��ô������ôʵ����򵥵Ĵ��������أ�
%     ����˵����ͨ�����ӡ�
        fs=44100;
    t=0: 1/fs: 0.5;
    y = sin(2*pi*261.63*t);
    y = y + sin(2*pi*329.63*t);
    y = y + sin(2*pi*392*t);
    soundsc(y,fs);   %soundsc()û����������
    %����һ����С�ߺ���(���߽����ߺ���)
       fs=44100;
    t=0: 1/fs: 0.5;
    y = sin(2*pi*261.63*t);
    y = y + sin(2*pi*329.63*t);
    y = y + sin(2*pi*466.16*t);
    soundsc(y,fs);   
    
    
   %ʵ�� 
     clear
    fs=44100;
    t=0: 1/fs: 0.5;

    %%%%%backing track%%%%%
    one=0.5*sin(2*pi*261.63*t);
    one=one+0.5*sin(2*pi*329.63*t);
    one=one+0.5*sin(2*pi*466.16*t);
    four=0.5*sin(2*pi*349.23*t);
    four=four+0.5*sin(2*pi*440*t);
    four=four+0.5*sin(2*pi*622.25*t);
    five=0.5*sin(2*pi*392*t);
    five=five+0.5*sin(2*pi*493.88*t);
    five=five+0.5*sin(2*pi*698.46*t);
    bar1=[one one one one];
    bar4=[four four four four];
    bar5=[five five five five];
    backing=[bar1 bar1 bar1 bar1 bar4 bar4 bar1 bar1    bar5 bar4 bar1 bar1];

    %%%%%pentatonic%%%%%
    so=sin(2*pi*196*t);
    la=sin(2*pi*220*t);
    do=sin(2*pi*261.63*t);
    re=sin(2*pi*293.66*t);
    blue=sin(2*pi*311.13*t);
    blk=sin(2*pi*0*t); %blank 

    %%%%%melody%%%%%
    melody=[so so la la do do blue blue blue blk re do do do la blue blue la ...
    la do blue re so la do blk blk re blue do re so la la so la do re blue ...
    blue blue so so la la re blue do];

    %%%%%%%%%%%%%%%
    song=[backing;melody];
    soundsc(song,fs)
    %���������ϣ�����������Լ�д����Ƶ�Ļ�������audiowrite()����������ȡ�����audioread()������

    audiowrite('mysong.wav',melody,fs)
    [y,Fs] = audioread('mysong.wav');
    %���audioread()����Ҳʮ����Ȥ�����ǿ���¼��һ���Լ������������Լ������ĺ���ͼ�Ρ�

    [y,Fs] = audioread('01.mp3');
    t=length(y);
    t=linspace(0, 1.8097,t); %ʱ���ɴ�audioinfo('test.m4a') �鿴��
    plot(t,y)
    