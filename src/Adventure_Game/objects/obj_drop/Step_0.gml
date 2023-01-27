// ground/umbrella collision
if(place_meeting(x, y, obj_ground) || place_meeting(x, y, obj_umbrella)){
	instance_destroy()
}