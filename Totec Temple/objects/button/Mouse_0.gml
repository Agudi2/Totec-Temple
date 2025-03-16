if text == "Play" {
	room_goto(Room1)
} else if text == "Instructions" {
	room_goto(Instructions)
} else if text == "Back" {
	room_goto(menu)
} else {
	game_end()	
}