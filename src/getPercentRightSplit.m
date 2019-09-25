function correctSplit = getPercentRightSplit(indexOfDataCluster , countData, countCentroids)
    countRightSplit = 0;
    uniqueCluster = 1:1:countCentroids;%unique(indexOfDataCluster);
    cursorUniqueCluster = 1;
    
    for i=1: 1: length(indexOfDataCluster)
        if i/(countData *cursorUniqueCluster) > 1
            cursorUniqueCluster=cursorUniqueCluster+1;
        end
        expectedCluster = uniqueCluster(cursorUniqueCluster); 

        if expectedCluster == indexOfDataCluster(i)
            countRightSplit=countRightSplit+1;
        end
    end

    correctSplit = (countRightSplit*100)/length(indexOfDataCluster);
    
end