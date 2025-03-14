if (keyboard_check_pressed(ord("E"))){
	audio_play_sound(NextLevel, 1, false)
	room_goto_next()
}