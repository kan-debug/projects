function [xPos,yPos,zPos,partical_available]=block_init (origin,length_width_height,xPos,yPos,zPos,partical_available, num_particals, line_fix)

% parameter explanation
% line fix is a row vector contains extention to:
% [x negative direction, x+, y-, y+]
% value is either 0 or 1, purpose is to avoid duplicated point cause
% misinterpretation in visualization
if nargin<=7
    line_fix = [0,0,0,0];
end
%start partical index
partical_index = num_particals-partical_available+1;
partical_in_use = (1+length_width_height(1))*(1+length_width_height(2))*(length_width_height(3));
partical_available = partical_available-partical_in_use;

index_counter = 0;
for i = origin(1):origin(1)+length_width_height(1)
    
    for j = origin(2):origin(2)+length_width_height(2)
        
        for k = origin(3):origin(3)+length_width_height(3)-1
            % z only takes one per layer
            xPos(partical_index+index_counter)=i;
            yPos(partical_index+index_counter)=j;
            zPos(partical_index+index_counter)=k;
            index_counter = index_counter+1;
            
        end
    end
end

%visualize for each block
figure(3)
%x line, 4 lines, one for each y,z variation
x_index = [origin(1)-line_fix(1),origin(1)+length_width_height(1)+line_fix(2)];
y_index = [origin(2)-line_fix(3),origin(2)+length_width_height(2)+line_fix(4)];
z_index = [origin(3),origin(3)+length_width_height(3)];
for yi = y_index
    for zi = z_index
        line(x_index,[yi,yi],[zi,zi]);
    end
end

for xi = x_index
    for zi = z_index
        line([xi,xi],y_index,[zi,zi]);
    end
end

for xi = x_index
    for yi = y_index
        line([xi,xi],[yi,yi],z_index);
    end
end
        
end