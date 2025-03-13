//detectomg climbing
if (instance_place(x, y, obj_ladder)) {
	if keyboard_check(vk_up) or keyboard_check(vk_down){
		climbing = true
		vspeed = 0
		gravity = 0
		//sprite_index = spr_climbing
	}	
} 
else {
	//sprite_index = spr_player
	climbing = false
}



//if climbing climbing stuff will happend
if climbing {
	if keyboard_check(vk_up){
		sprite_index = spr_playerClimb
		y -= climb_speed
		
		vspeed = 0
		gravity = 0
	}
	else if keyboard_check(vk_down){
		sprite_index = spr_playerClimb
		y += climb_speed
		vspeed = 0
		gravity = 0
		
	} else {
		sprite_index = spr_playerClimbIdle
	}
	if instance_place(x, y, obj_ground){ 
		climbing = false
	}	
}

	//If not climbing, can move side to side and gravity will gravity
else if global.canMove{
	if (!place_meeting(x, y+1, obj_ground) and climbing != true) {
		gravity = grav_val
	} else {
		gravity = 0
	}
	
	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_ground)){
		if (!place_meeting(x, y + 1, obj_ground)) {
			sprite_index = spr_player_fall
		} else {
			sprite_index = spr_player_side
		}
		x -= move_speed
		image_xscale = -2
	} 

	else if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_ground)) {
		if (!place_meeting(x, y + 1, obj_ground)) {
			sprite_index = spr_player_fall
		} else {
			sprite_index = spr_player_side
		}
		x += move_speed
		image_xscale = 2
	}
	else if (!place_meeting(x, y + 1, obj_ground)) {
		sprite_index = spr_player_fall
	}
	else {
		sprite_index = spr_idle
	}
	if (place_meeting(x, y + 1, obj_moving_platform)) {
		vspeed = instance_place(x, y + 1, obj_ground).vspeed
		hspeed = instance_place(x, y + 1, obj_ground).hspeed
	} else {
		hspeed = 0
	}
	if keyboard_check(vk_up) {
		if instance_place(x, y+1, obj_ground){
			vspeed = jump_height
		}
	}
	if (vspeed > 0 && place_meeting(x, y+vspeed, obj_moving_platform)) {
		move_contact_solid(270, vspeed)
		vspeed = 0
	}
	/**
	if keyboard_check_pressed(ord("Z")){
		instance_create_layer(x,y, "Instances", obj_sword)
	}
	**/
	
}
