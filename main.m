data = [3+3i 7+7i -3+3i -7+7i -3-3i -7-7i 3-3i 7-7i];
centroids = [5+5i -5+5i -5-5i 5-5i];

[newCentroids, indexOfDataCluster] = kMeans(data,centroids,3);

newCentroids
indexOfDataCluster