
if global.items >= 4{
	room_goto_next()
	object_set_sprite(obj_text_end, spr_good_ending)
} else {
	instance_destroy(other)
	instance_create_layer(0, -352, "Instances", obj_badEnd)
}
