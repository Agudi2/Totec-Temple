if keyboard_check(vk_alt){

	if keyboard_check_pressed(ord("q")){
		game_restart()
	}

	if keyboard_check_pressed(ord("n")){
		room_goto_next()
	}


}