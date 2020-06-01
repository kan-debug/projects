%roof init
%origin is the least x,y,z of a block
origin = [0, 0, level-1];
length_width_height = [13,10,1];
[xPosition,yPosition,zPosition,partical_available]= block_init (origin,length_width_height,...
                                                    xPosition,yPosition,zPosition,...
                                                    partical_available,C.num_particals);
           