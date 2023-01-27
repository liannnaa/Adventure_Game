// hits tree
if((place_meeting(x+5, y, obj_axe_moving) || place_meeting(x-5, y, obj_axe_moving) || place_meeting(x, y+5, obj_axe_moving) || place_meeting(x, y-5, obj_axe_moving)) && !hitting){
	hitting = true
	hitting_timer = 0
}

if(hitting){
	hitting_timer += 1
	if(hitting_timer > 180){
		hitting = false
		instance_destroy()
	}
}