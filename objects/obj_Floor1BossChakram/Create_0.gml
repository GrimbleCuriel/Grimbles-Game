alarm[0] = fly_time_2
image_xscale = obj_enemy.image_xscale

var chakram_direction = point_direction(x, y, obj_player.x, obj_player.y);

hspeed = lengthdir_x(projectile_speed, chakram_direction);
vspeed = lengthdir_y(projectile_speed, chakram_direction);
