
if (instance_exists(obj_player)) {
    var dx = obj_player.x - x
    var facing_right = (direction == 0)
    var player_in_front = (facing_right && dx > 0) || (!facing_right && dx < 0)

    if (player_in_front && abs(dx) < range && abs(obj_player.y - y) < 10) {
        if (fire_timer <= 0) {
            var arrow = instance_create_layer(x, y, "Instances", obj_arrow)
			arrow.direction = direction
            fire_timer = fire_rate
        }
    }
}

if (fire_timer > 0) {
    fire_timer--
}