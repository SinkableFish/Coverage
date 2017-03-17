function [ output_args ] = drawGraph( locationData, minRadius )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
figure(2);
axis([0 100 0 100])
axis off;
dataSize=length(locationData(:,1));
for i=1:dataSize
    rectangle('Position',[locationData(i,1)-minRadius,locationData(i,2)-minRadius,2*minRadius,2*minRadius],'Curvature',[1,1],'EdgeColor','r', 'FaceColor','r');
    hold on;
end
F=getframe;
imwrite(F.cdata,'.\data\1.png');

end

