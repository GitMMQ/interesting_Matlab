function COMM(hedit,hpopup,hlist)
com=get(hedit,'String');
n1=get(hpopup,'Value');
n2=get(hlist,'Value');
if ~isempty(com)    %�༭������ǿ�ʱ
eval(com');      %ִ�дӱ༭�����������
    chpop={'spring','summer','autumn','winter'};
    chlist={'grid on','grid off','box on','box off'};
    colormap(eval(chpop{n1}));
    eval(chlist{n2});
end
