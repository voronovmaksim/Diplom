data = [2 4 -10 12 3 20 30 9 11];


%function
centroid = [1 5 30];
numOfClusters=length(centroid);

distance = abs(data-centroid');
[smallerDistance, indexOfDataIsCluster] = min (distance);


centroidNodeSum = zeros(1,numOfClusters);
for i=1:1:length(indexOfDataIsCluster)
     centroidNodeSum(indexOfDataIsCluster(i)) = centroidNodeSum(indexOfDataIsCluster(i)) + data(i);
end

clusters = unique(indexOfDataIsCluster);
clusterNodeCount = zeros(1,length(clusters));
for j=1:1:length(clusters)
    cluster = clusters(j);
    clusterNodeCount(j) = sum(indexOfDataIsCluster == cluster);
end

newCentroid = fix(centroidNodeSum./clusterNodeCount);

isAchived = true;


if ~(isAchived && isequal(centroid, newCentroid))
    isAchived=false;
end

'Final result'
'---------------------------------------------'
if true%isAchived
    for k=1:1:length(newCentroid)
        valueCluster=[];
        for q=1:1:length(data)
            
            if indexOfDataIsCluster(q)== k
                 valueCluster(end+1) = data(q);
            end
        end
        strcat(sprintf('clister %.f:',k),sprintf(' %d,',valueCluster))
    end
 strcat('new centroid: ',sprintf('.%d',newCentroid))   
else
    %reqursia
end
    

