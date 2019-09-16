data = [2 4 -10 12 3 20 30 9 11];
centroids = [1 5 30];

[newCentroids, indexOfDataCluster] = kMeans(data,centroids);

