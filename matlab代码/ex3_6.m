price=input('��������Ʒ�۸�');
switch fix(price/100) 
   case {0,1}             %�۸�С��200
      rate=0;
   case {2,3,4}            %�۸���ڵ���200��С��500
      rate=3/100;
   case num2cell(5:9)       %�۸���ڵ���500��С��1000
      rate=5/100;
   case num2cell(10:24)     %�۸���ڵ���1000��С��2500
      rate=8/100;
   case num2cell(25:49)     %�۸���ڵ���2500��С��5000
      rate=10/100;
   otherwise               %�۸���ڵ���5000
      rate=14/100;
end
price=price*(1-rate)              %�����Ʒʵ�����ۼ۸�
