close all
clear
%constant init
global C
C.num_particals = 1000;     %total number of particals
C.spacing = 5;              %minimum resolution between points
C.g = 9.80665;              %gravitational coefficient
partical_available = C.num_particals;

figure_init

%parameter explaination:
%adjcentXpos, adjcentXneg, adjcentYpos, adjcentYneg, adjcentZpos, adjcentZneg
%   contains index (not actual position!) of the adjcent cells, to find
%   actual position:xPosition(adjcentXpos)

%matrix init
xPosition = zeros(1,C.num_particals);
yPosition = zeros(1,C.num_particals);
zPosition = zeros(1,C.num_particals);

level = 1;
floor_init
level = 2;
floor_init
level = 3;
roof_init


visualize

 


