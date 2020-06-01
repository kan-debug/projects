% this creates a scatter plot

figure(1)

scatter3(xPosition(1:C.num_particals-partical_available),yPosition(1:C.num_particals-partical_available),zPosition(1:C.num_particals-partical_available))
axis  equal

%this maps the adjcent points and draw lines between points
pointMap

%slice by defining a plane
figure(2)
%slice for x = 5 change this to function later
slice_index = (xPosition(1:C.num_particals-partical_available)>=5 & xPosition(1:C.num_particals-partical_available)<6);
scatter(yPosition(slice_index),zPosition(slice_index))
axis  equal

%showing non-adjcent points only
% figure(3)
% xlabel('x axis')
% ylabel('y axis')
% zlabel('z axis')
% %non adjcent is the index w.r.t. position array (xPosition)
% non_adjcent = (adjcentXpos==0 | adjcentXneg==0 | adjcentYpos==0 | adjcentYneg==0 | adjcentZpos==0);
% scatter3(xPosition(non_adjcent),yPosition(non_adjcent),zPosition(non_adjcent))
% 
% non_zeros_index = adjcentXpos>0;
% plot_index = find(non_adjcent & non_zeros_index);
% line([ xPosition(find(plot_index)), xPosition(adjcentXpos(find(plot_index)))],...
%     [ yPosition(find(plot_index)), yPosition(adjcentXpos(find(plot_index)))],...
%     [ zPosition(find(plot_index)), zPosition(adjcentXpos(find(plot_index)))],'LineStyle','-','Color','c','LineWidth',0.25);


% finds a point index with given coordinate
%test = find(xPosition==1 & yPosition==1 & zPosition==1)
% finds a point coordinate with given index
%[xPosition(test) yPosition(test) zPosition(test)]
% find adjcent point with given index
%[adjcentXpos(test) adjcentXneg(test);adjcentYpos(test) adjcentYneg(test);adjcentZpos(test) adjcentZneg(test)]

% out of boundary check
% find(xPosition(find(non_adjcent))>13)

