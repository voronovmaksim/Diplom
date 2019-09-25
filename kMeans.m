function [newCentroidsOut,indexOfDataIsClusterOut] = kMeans(data, centroids, maxRecursion)
    numOfClusters=length(centroids);

    distance = abs(data-centroids');
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

    newCentroids = fix(centroidNodeSum./clusterNodeCount);

    isAchived = true;


    if ~(isAchived && isequal(centroids, newCentroids))
        isAchived=false;
    end

    if isAchived == false && maxRecursion > 0
       [getCentroids,getindexOfDataIsCluster] = kMeans(data, newCentroids,maxRecursion-1);
       newCentroidsOut = getCentroids;
       indexOfDataIsClusterOut = getindexOfDataIsCluster;
    else
        newCentroidsOut = centroids;
        indexOfDataIsClusterOut = indexOfDataIsCluster;
    end
end    