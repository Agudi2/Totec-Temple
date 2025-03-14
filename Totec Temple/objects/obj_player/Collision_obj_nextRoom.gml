if (keyboard_check_pressed(ord("E"))){
	if global.pulled {
		global.levers++	
	}
	audio_play_sound(NextLevel, 1, false)
	room_goto_next()
}