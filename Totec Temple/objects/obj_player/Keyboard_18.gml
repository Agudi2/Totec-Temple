if (keyboard_check_pressed(ord("N"))) {
	room_goto_next()
}
if (keyboard_check_pressed(ord("I"))) {
	var inst = instance_create_layer(x, y, "Instances", obj_player_invincible)
	inst.image_xscale *=1.5
	inst.image_yscale *=1.5
	inst.mask_index = self.mask_index
	instance_destroy(self, false)
}
if (keyboard_check_pressed(ord("E"))) {
	room_restart()
}