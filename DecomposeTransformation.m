function [ R, T ] = DecomposeTransformation( H )
%DECOMPOSETRANSFORMATION Extracts 3x3 Orientation and 3x1 Translation
    
    error(nargchk(1, 1, nargin)); [m,n] = size(H); 

    if ((m ~= 4) || (n~= 4))
        % Checking that input is a 4x4 transformation matrix
        error('Expecting a 4x4 Homogeneous Transformation Matrix'); 
    end
    
    if (any(H(4, 1:3)) || H(4,4) ~= 1)
        % Checks last row to ensure that it is [0 0 0 1]: 
        error('Invalid Homogeneous Transformation Matrix'); 
    end
    
    R = H(1:3, 1:3); 
    T = H(1:3, 4); 

end

