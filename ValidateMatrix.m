function ValidateMatrix(N, varargin)
    if nargin < 2
        error('Supply at least one matrix for validation'); 
    end
    
    n = size(varargin,2);
    
    for i = 1 : n
        CheckMatrixDimensions(N, varargin{i}); 
    end

end


function CheckMatrixDimensions(N, A)
    
    [m, n] = size(A); 
    
    if n ~= N
        error(['Matrix should have N = ' num2str(N) ' rows']); 
    end
    
    if m ~= 3   % Assuming Cartesian Form
        error('Matrix should have 3 rows (for cartesian XYZ coordinates)'); 
    end

end