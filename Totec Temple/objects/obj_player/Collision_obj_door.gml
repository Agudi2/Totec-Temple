if(has_key) {
	audio_play_sound(OpenDoor, 1, false)
	has_key = false
	instance_destroy(other)
}