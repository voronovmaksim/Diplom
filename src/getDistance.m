function distance = getDistance(data, centroids)
    distance = zeros(length(centroids), length(data));
    
    for i=1:1:length(data)
       for j=1:1:length(centroids)
           d=data(:,i);
           c=centroids(:,j);
           distance(j,i)=abs(norm(d-c));
       end
    end
end