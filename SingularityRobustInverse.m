function [ Jsr ] = SingularityRobustInverse( J, k )
%SINGULARITYROBUSTINVERSE Computes the inverse of a non-square matrix J. 

    JJt = J * J'; 
    kI  = k * eye(size(JJt)); 
    Jsr = J'/(JJt + kI); 

end

