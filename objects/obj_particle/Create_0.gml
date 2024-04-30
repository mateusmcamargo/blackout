part_system = part_system_create();

part_run = part_type_create();
part_type_shape(	part_run, pt_shape_pixel);
part_type_direction(part_run, 90, 180, 0, 1);
part_type_speed(	part_run, .3, .6, -.004, 0);
part_type_life(		part_run, 5, 10);

part_land_left = part_type_create();
part_type_shape(	part_land_left,  pt_shape_pixel);
part_type_direction(part_land_left,  90, 180, 0, 1);
part_type_speed(	part_land_left,  .3, .6, -.004, 0);
part_type_life(		part_land_left,  10, 15);

part_land_right = part_type_create();
part_type_shape(	part_land_right, pt_shape_pixel);
part_type_direction(part_land_right, 0, 90, 0, 1);
part_type_speed(	part_land_right, .3, .6, -.004, 0);
part_type_life(		part_land_right, 10, 15);

part_jump_left = part_type_create();
part_type_shape(	part_jump_left,  pt_shape_pixel);
part_type_direction(part_jump_left,  140, 220, -5, 1);
part_type_speed(	part_jump_left,  .4, .8, -.01, 0);
part_type_life(		part_jump_left,  7, 14);

part_jump_right = part_type_create();
part_type_shape(	part_jump_right, pt_shape_pixel);
part_type_direction(part_jump_right, -40, 40, 5, 1);
part_type_speed(	part_jump_right, .4, .8, -.01, 0);
part_type_life(		part_jump_right, 7, 14);