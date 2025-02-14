//vspeed += 
vspeed += .1
if global.canMove {
	if keyboard_check(vk_left) x -= 4
	if keyboard_check(vk_right) x += 4
	//if keyboard_check(vk_space) vspeed -= 3 
	
}
if not keyboard_check(vk_left) and not keyboard_check(vk_right){
	hspeed = 0
}

if place_meeting(x, y+1, obj_ground){
	vspeed = 0
	
	if keyboard_check(vk_space) {
		vspeed -= 5 
	}
	
}

move_and_collide(hspeed, vspeed, obj_ground)