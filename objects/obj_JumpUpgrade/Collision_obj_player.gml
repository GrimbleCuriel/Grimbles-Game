global.jump_speed = -10
instance_destroy()
instance_create_layer(x,y,"Instances",obj_JboostAnimation)
score += 5
audio_play_sound(snd_upgrade,1,false)