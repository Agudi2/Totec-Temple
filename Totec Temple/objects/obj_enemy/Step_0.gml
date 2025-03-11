if (pause_time <= 0) {
	sprite_index = spr_enemy_walk
    x += speed * dcos(direction)

    if (place_meeting(x, y, obj_marker)) {
        pause_time = pause_duration
        speed = 0
    }
} else {
    pause_time--;
	sprite_index = spr_enemy
    if (pause_time <= 0) {
		image_xscale *= -1
        direction = 180 - direction
        speed = 2
    }
}