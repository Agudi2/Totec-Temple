audio_play_sound(Death, 1, false)
if (death_animation == 0) {
	instance_create_layer(x, y-7, "Instances", player_death)
}
if (death_animation == 1) {
	instance_create_layer(x, y-9, "Instances", player_lavaDeath)
}
