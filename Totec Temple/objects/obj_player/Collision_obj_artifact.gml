if keyboard_key_press(ord("E")){
	if global.levers == 5{
		room_goto_next()
		ending.sprite_index = spr_good_ending
	}
}