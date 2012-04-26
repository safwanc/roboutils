function [ xcom, mass ] = CenterOfMass( x, m )
%CENTEROFMASS Summary of this function goes here
%   Detailed explanation goes here

    error(nargchk(2, 2, nargin)); 
    N = length(m); ValidateMatrix(N, x); 
    
    num = 0; den = 0; 
    
    for i = 1 : N 
        num = num + x(i)*m(i); 
        den = den + m(i); 
    end
    
    xcom = num / den; 
    
    if nargout > 1
        mass = den; 
    end


end