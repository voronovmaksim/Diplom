function data = generateDataWithNoise(centroids, count, matExp, dispersion, isMix)
   [countLine,countColumn] = size(centroids);
    data = zeros (countLine, countColumn*count);
 
  
  cursorData = 1;
  for i=1:1:countColumn
      for j=1:1:count
          data(:,cursorData)=centroids(:,i)+gausVector(matExp, dispersion, countLine);
          cursorData=cursorData+1;
      end
  end
  
  if isMix
      %[countLineData,countColumnData] = size(data);
      data = data(:,randperm(size(data,2)));
  end
  
end 