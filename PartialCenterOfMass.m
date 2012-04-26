function [ pcom ] = PartialCenterOfMass( x, m, T, j )
%PARTIALCENTEROFMASS Summary of this function goes here
%   Detailed explanation goes here

    error(nargchk(2, 4, nargin)); 
    
    N = length(m); ValidateMatrix(N, x); 

    if nargin < 4
        j = 1 : N; 
    end
    
    n = length(j); pcom = zeros(3, n); 
    
    for k = 1 : n
        pchain = j(k) : N; % partial chain
        pcom(:,k) = CenterOfMass(x(:, pchain), m(pchain)); 
    end
        
    if nargin > 2
        % Transform into base frame if transformation provided
        pcom = T * pcom; 
    end
    
end