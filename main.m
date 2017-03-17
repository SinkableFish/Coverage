nodeNum=50;
locationData=creatRandomNode(nodeNum);
for i=1:100
    tempData=checkLinks(locationData, i);
    n=DFS(tempData);
    if (length(find(n)==1)==nodeNum)
        minRadius=i;
        break;
    end
end
figure(1);
plot(locationData(:,1),locationData(:,2),'*');
hold on;
for i=1:nodeNum
    for j=i:nodeNum
        if tempData(i,j)==1
            plot([locationData(j,1), locationData(i,1)],[locationData(j,2) locationData(i,2)]);
            hold on;
        end
    end
end
box off;
text(90,90,'r=');
text(93,90,num2str(minRadius));
drawGraph(locationData, minRadius);
i=imread('.\data\1.png');
target=im2bw(i);
[m,n]=size(target);
count=length(find(target==0));
percent=count/(m*n);