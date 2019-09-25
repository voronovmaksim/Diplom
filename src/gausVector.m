function gausVector = gausVector(matExp, dispersion, dimension)
    gausVector =  matExp + dispersion.*randn(dimension,1);
end