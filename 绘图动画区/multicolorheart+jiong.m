axis off;
set(gcf, 'menubar', 'none', 'toolbar', 'none'); % ����ʾ�˵����͹�����
for k = 1 : 100
    h = text(rand, rand, ...
        ['\fontsize{',num2str(unifrnd(20, 50)),'}\fontname{����} ��'], ...
        'color', rand(1, 3), 'Rotation', 360 * rand);
    pause(0.2);
end
