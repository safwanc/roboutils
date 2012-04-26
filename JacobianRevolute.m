function [ Jw, Jv ] = JacobianRevolute( z, p, o )
%JACOBIANREVOLUTE Calculates a Jacobian column for revolute joint.
%   z = joint axis vector 
%   p = end effector location 
%   o = joint origin location

    error(nargchk(2, 3, nargin)); 
    
    if nargin > 2
        p = p - o;
    end
    
    Jw = cross(z,p); 
    Jv = z; 
    
end