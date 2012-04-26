function [ Jcom ] = CenterOfMassJacobian( z, pcom, m )
%CENTEROFMASSJACOBIAN Calculates the COM Jacobian [3xN]
%   'z', 'x' must be 3xN, 'm' must be 1xN

    error(nargchk(2, 3, nargin)); 
    N = length(m); 
    ValidateMatrix(N, z, pcom); 
    Jcom = zeros(3,N); 
    
    M = sum(m); 
    
    for n = 1 : N
        Jcom(:,n) = (sum(m(n:N))/M) * cross(z(n), pcom(n)); 
    end
    
end

