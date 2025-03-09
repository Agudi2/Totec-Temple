
//detectomg climbing
/**
if (instance_place(x, y, obj_ladder)) {
	if keyboard_check(vk_up) or keyboard_check(vk_down){
		climbing = true
		vspeed = 0
		gravity = 0
		sprite_index = spr_climbing
	}	
} 
else {
	sprite_index = spr_player
	climbing = false
}



//if climbing climbing stuff will happend
if climbing {
	if keyboard_check(vk_up){
		y -= climb_speed
		
		vspeed = 0
		gravity = 0
	}
	if keyboard_check(vk_down){
		y += climb_speed
		vspeed = 0
		gravity = 0
		
	}
	if instance_place(x, y, obj_ground){ 
		climbing = false
	}	
}
**/
	
	//If not climbing, can move side to side and gravity will gravity
if global.canMove{
	if (!place_meeting(x, y+1, obj_ground)) {
		gravity = grav_val
	} else {
		gravity = 0
	}
	
	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_ground)){
		sprite_index = spr_player_side
		x -= move_speed
		image_xscale = -2
	} 

	if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_ground)) {
		sprite_index = spr_player_side
		x += move_speed
		image_xscale = 2
	}

	/**
	if keyboard_check_pressed(ord("Z")){
		instance_create_layer(x,y, "Instances", obj_sword)
	}
	**/
	
}

if keyboard_check(vk_up) {
	if instance_place(x, y+1, obj_ground){
		vspeed = jump_height
		
	}
}

if keyboard_check_pressed(ord("K")) {
	hp -= 10
}

if hp <= 0{
	instance_destroy()	
}

//vspeed = min(vspeed, 12)
