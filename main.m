function percentCorrectSplit = main (dispersion)
    
    if nargin < 1 
        dispersion = 20;
    end 
    
    matExp = 0;
    countData = 20;

    m1=[1;0;0;0];
    m2=[0;1;0;0];
    m3=[0;0;1;0];
    m4=[0;0;0;1];


    centroids = [m1 m2 m3 m4];

     data = generateDataWithNoise(centroids,countData, matExp, dispersion, false);

    [newCentroids, indexOfDataCluster] = kMeans(data,centroids,3);

     percentCorrectSplit = getPercentRightSplit(indexOfDataCluster,countData, length(centroids));
    
end
