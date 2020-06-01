%evaluate deformation force, store into force matrix
%zero index means no adjcent points

% young's modulus E = stress/deformation
%   E is a constant for a material (young's modulous), in Pascal
%   Stress is function of deformation, in Pascal
%   deformation is propotional displacement Delta_L/L, unitless


break_distance = 1;
E = 1;
A = 1;
L = 1;

for i = 1: particle_used
    for j = 1: particle_used
        
        
    distanceX = xPosition(i)-xPosition(j);
    distanceY = yPosition(i)-yPosition(j);
    distanceZ = zPosition(i)-zPosition(j);
    
    distance = sqrt(distanceX^2+distanceY^2+distanceZ^2);
    
    if distance<=break_distance %&& distance>0
        F_mag = E*distance;
        % need to figure out distance to original adjcent blocks!
        F_dir_xyz = 1/distance*[distanceX,distanceY,distanceZ];
        % unit vector F_dir_xyz = P1P2/|P1P2|
        
    
    end
    
    end
end