a=1:5;
fid=fopen('fdat.bin','w');   %��д��ʽ���ļ�fdat.bin
fwrite(fid,a,'int16');      %��a��Ԫ����˫�ֽ�����д���ļ�fdat.bin
status=fclose(fid);             
fid=fopen('fdat.bin','r');    %�Զ����ݷ�ʽ���ļ�fdat.bin
status=fseek(fid,6,'bof');   %���ļ�ָ��ӿ�ʼλ����β���ƶ�6���ֽ�
four=fread(fid,1,'int16');   %��ȡ��4�����ݣ����ƶ�ָ�뵽��һ������
position=ftell(fid);         %ftell�ķ���ֵΪ8    
status=fseek(fid,-4,'cof');   %���ļ�ָ��ӵ�ǰλ����ǰ�ƶ�4���ֽ�
three=fread(fid,1,'int16');   %��ȡ��3������
status=fclose(fid);
