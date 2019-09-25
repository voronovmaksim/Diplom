matExp = 0;
dispersion = 0.02;
countData = 2;

m1=[1;0;0;0];
m2=[0;1;0;0];
m3=[0;0;1;0];
m4=[0;0;0;1];

 
centroids = [m1 m2 m3 m4];

 data = generateDataWithNoise(centroids,countData, matExp, dispersion, false);

[newCentroids, indexOfDataCluster] = kMeans(data,centroids,11);
 newCentroids
 indexOfDataCluster

