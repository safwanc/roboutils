function [ J ] = JacobianColumn( z, p, j )
%JACOBIANCOLUMN Calculates a Jacobian column for revolute joint. 
    J = [cross(z,(p-j)); z]; 
end