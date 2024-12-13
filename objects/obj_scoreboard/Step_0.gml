if (keyboard_check(ord("R"))) {
    game_restart();
	score = 0
}
if keyboard_check(ord("G")){
	global.player_health = 1000000
	global.max_player_health = 1000000
}
if keyboard_check(ord("H")){
	global.jump_speed = -15
}
if keyboard_check(ord("J")){
	global.move_speed = 10
}
if keyboard_check(ord("N")){
	room_goto(rm_Boss);
}