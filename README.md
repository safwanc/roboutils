<!--
Safwan Choudhury, MASc   
Electrical Engineering, Systems & Controls
University of Waterloo. Ontario, Canada.
-->

# roboutils
Various MATLAB functions, scripts and classes written for common robotics computations: 

## kinematics
- `DecomposeTransformation` - extracts 3x3 orientation and 3x1 translation from 4x4 homogeneous transformation matrix

### center of mass
- `CenterOfMass`
- `PartialCenterOfMass` 

### velocity kinematics
- `JacobianRevolute` - linear/angular velocity jacobian for revolute joint
- `JacobianPrismatic` - linear/angular velocity jacobian for prismatic joint
- `CenterOfMassJacobian` - computes jacobian with partial COM for serial chains

## linear algebra
- `SkewSymmetric` - returns 3x3 skew symmetric matrix for a 3x1 vector
- `SingularityRobustInverse` - returns the SR-inverse of a non-square matrix (alternative to pseudoinverse)
