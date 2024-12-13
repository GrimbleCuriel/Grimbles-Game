if times_hit2 >= 2 {
	instance_destroy(self)
	score += 30
	audio_play_sound(snd_bikeDeath2,1,false)
}