function feb
%�O���j�i�{�H���Q
temp=0;
%�Ǿ��E�I�ƥ�
n=1;
%�e�Ϯ�a����
avalue=1;
%���E�I�ƥ�
npoint=2;
%���E�I�x�}
y=[;];
%���w�Ҧ����E�I�]���ǰt,�O�s�����E�I
newpoint=0;
%�O�����E�I�A�õe��
p=[;];
%x0�_�l��
x=0.1;
%�J�_�l�ȡA�o�إ�a���
a=1.0;
format short


for a=1:0.01:4
%�_�l���k�����ƶq����    
for loopc=1:20000
    x=a*x*(1-x);
end
%���]�v�g��F���E���A
y(n,1)=x;
y(n,2)=1;
%�b�h�����k��,��A���ХX�{���ưO�U
for loopc=20001:60000
    x=a*x*(1-x);
%������,�O�_���s���Ǿ��E�I
    for nn=1:n
%�J���װ��D,�{�b���]x,y(�{�b���I�M�w�������E�I�ۤ�)���Ȭۮt�ܤ�,�Y��@�۵�
        temp=abs(x-double(y(nn,1)));
        if double(temp)<0.00001
            x=double(y(nn,1));
        end
        if (x==double(y(nn,1)))
            %�Ǿ��E�I�A���X�{,�X�{����+1
            y(nn,2)=y(nn,2)+1;
            newpoint=0;
            break;
        else
            %�s�Ǿ��E�I
           [y_sizex,y_sizey]=size(y);
           newpoint=newpoint+1;
           if newpoint==y_sizex
                y(n+1,1)=x;
                y(n+1,2)=1;
                %�s�]�w��
                n=n+1;newpoint=0;
                break;
           end
       end
    end
end
%-------------------------------------------------
for nn=1:n
        %�X�{�W�L10���]�����E�I
    if y(nn,2)>10
        %�浹�O���x�}
        p(avalue,1)=a;
        p(avalue,npoint)=y(nn,1);
        npoint=npoint+1;
        plot(a,y(nn,1),'.');
        hold on
    end
end

avalue=avalue+1;
n=1;
%���E�I�ƥ�
npoint=2;
%���E�I�x�}
y=[;];
%���w�����E�I�]���ǰt,�O�s�����E�I
newpoint=0;
%x0�_�l��
x=0.1;
end
%--------------------------------------------------
%���G��Xx�̫ᾮ�E�I,y�����E�I�ΥX�{����,p��a�ȹ��������E�I
%x
%y
%p











