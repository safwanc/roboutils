function [ Jw, Jv ] = JacobianPrismatic( z, ~, ~ )
%JACOBIANPRISMATIC Calculates a Jacobian column for prismatic joint.
%   z  = joint axis vector 
%   ~p = end effector location [ignored]
%   ~o = joint origin location [ignored]

    error(nargchk(1, 3, nargin)); 
    
    Jw = z; 
    Jv = 0; 
    
end