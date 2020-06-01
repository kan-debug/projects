%point mapping
%finds adjcent points (index in xPosition ->adjcent), zero index means no
%adjcent
% check if this is mandatory
particle_used = C.num_particals-partical_available;
% adjcentIndex = zeros(1,particle_used,6);
adjcentXpos = zeros(1,particle_used);
adjcentXneg = zeros(1,particle_used);
adjcentYpos = zeros(1,particle_used);
adjcentYneg = zeros(1,particle_used);
adjcentZpos = zeros(1,particle_used);
adjcentZneg = zeros(1,particle_used);

% outer loop indicate index,inner loop indicate adjcent index
for i = 1: particle_used
    % reset adjCounter to no-adjcent status
    % adjCounter = 1;
    for j = 1: particle_used
        % if all adjcent points are found, skip to next point
        skip_condition = (adjcentXpos(i)~=0)&&(adjcentXneg(i)~=0)&&...
            (adjcentYpos(i)~=0)&&(adjcentYneg(i)~=0)&&...
            (adjcentZpos(i)~=0)&&(adjcentZneg(i)~=0);
        if skip_condition
            break
        end
        
        distanceX = xPosition(i)-xPosition(j);
        distanceY = yPosition(i)-yPosition(j);
        distanceZ = zPosition(i)-zPosition(j);
        
        distance = sqrt(distanceX^2+distanceY^2+distanceZ^2);
        
        if distance<=1 && distance>0
            
%             adjcentIndex(i,adjCounter) = j;
%             adjCounter = adjCounter + 1;
            if distanceX^2<=1 && distanceX^2>0
                %case x distance is close =>1
                
                if distanceX<0
                    adjcentXpos(i) = j;
                    % [[ xPosition(i), xPosition(j)],[ yPosition(i), yPosition(j)],[ zPosition(i), zPosition(j)]]
                    %line([ xPosition(i), xPosition(j)],[ yPosition(i), yPosition(j)],[ zPosition(i), zPosition(j)],'LineStyle','-','Color','c','LineWidth',0.25);
                else
                    adjcentXneg(i) = j;
                end
                continue
            end
            
            
            if distanceY^2<=1 && distanceY^2>0
                %case x distance is close =>1
                if distanceY<0
                    adjcentYpos(i) = j;
                    %line([ xPosition(i), xPosition(j)],[ yPosition(i), yPosition(j)],[ zPosition(i), zPosition(j)],'LineStyle','-','Color','c','LineWidth',0.25);
                else
                    adjcentYneg(i) = j;
                end
                continue
            end
            
            
            if distanceZ^2<=1 && distanceZ^2>0
                %case x distance is close =>1
                if distanceZ<0
                    adjcentZpos(i) = j;
                    %line([ xPosition(i), xPosition(j)],[ yPosition(i), yPosition(j)],[ zPosition(i), zPosition(j)],'LineStyle','-','Color','c','LineWidth',0.25);
                else
                    adjcentZneg(i) = j;
                end
                continue
            end
        end
        
    end
end