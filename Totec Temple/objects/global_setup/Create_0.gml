if(!audio_is_playing(BGM)) {
	audio_play_sound(BGM, 0, true)
}

global.respawn_room = room
global.items = 0
window_set_fullscreen(true);