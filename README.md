# simplified_four_wheel_model

This repository contains equations of a four wheel model in a simplified format.
The model contains 14 degrees of freedom
The states of the system are 
  
  Chassis x y z theta phi psi (3 translation & 3 rotations)
  
  NSM z (only vertical DOF considered for NSM)
  
  Wheel omega (only rotiation DOF considered for wheels)

  The generalized coordinate vector is formulated as q = [x y z theta phi psi z1 z2 z3 z4 int_omega_1 int_omega_2 int_omega_3 int_omega_4]
  
The equations are formulated in the world frame of reference 

The simplicity of the model comes from the way the spring deflections, damper velocities & slip angles are calculated

This model serves as the central vehicle model for all further items in the portfolio (controllers, state observers etc)
