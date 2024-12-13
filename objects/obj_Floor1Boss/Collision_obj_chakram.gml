boss_health -= 20;
if (boss_health <= 0) {
    instance_destroy(self);
    audio_play_sound(snd_big_death, 1, false);
}
instance_destroy(other);
