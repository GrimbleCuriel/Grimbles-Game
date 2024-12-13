alarm[0] = 45

var chakram_direction = point_direction(x, y, obj_player.x, obj_player.y);

hspeed = lengthdir_x(7, chakram_direction);
vspeed = lengthdir_y(7, chakram_direction);

audio_play_sound(snd_taze,1,false)