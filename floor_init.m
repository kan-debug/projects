%floor init
%origin is the least x,y,z of a block
origin = [0, 0, level-1];
length_width_height = [2,10,1];
[xPosition,yPosition,zPosition,partical_available]= block_init (origin,length_width_height,...
                                                    xPosition,yPosition,zPosition,...
                                                    partical_available,C.num_particals);
                                                
origin = [3, 0, level-1];
length_width_height = [10,2,1];
line_fix = [1, 0, 0, 0];
[xPosition,yPosition,zPosition,partical_available]= block_init (origin,length_width_height,...
                                                    xPosition,yPosition,zPosition,...
                                                    partical_available,C.num_particals,...
                                                    line_fix);

origin = [3, 8, level-1];
length_width_height = [10,2,1];
line_fix = [1, 0, 0, 0];
[xPosition,yPosition,zPosition,partical_available]= block_init (origin,length_width_height,...
                                                    xPosition,yPosition,zPosition,...
                                                    partical_available,C.num_particals,...
                                                    line_fix);
origin = [11, 3, level-1];
length_width_height = [2,4,1];
line_fix = [0, 0, 1, 1];
[xPosition,yPosition,zPosition,partical_available]= block_init (origin,length_width_height,...
                                                    xPosition,yPosition,zPosition,...
                                                    partical_available,C.num_particals,...
                                                    line_fix);