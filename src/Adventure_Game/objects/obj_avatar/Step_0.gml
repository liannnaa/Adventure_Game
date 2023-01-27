// move right if not hitting wall
if(keyboard_check(ord("D")) && x < room_width - sprite_width - edge && !place_meeting(x+move_speed, y, obj_tree) && !place_meeting(x+move_speed, y, obj_umbrella)){
	x += move_speed
}
// move left if not hitting wall
if(keyboard_check(ord("A")) && x > edge && !place_meeting(x-move_speed, y, obj_tree) && !place_meeting(x-move_speed, y, obj_umbrella)){
	x -= move_speed
}
// move down if not hitting wall
if(keyboard_check(ord("S")) && y < room_height - sprite_height - edge && !place_meeting(x, y+move_speed, obj_tree) && !place_meeting(x, y+move_speed, obj_umbrella)){
	y += move_speed
}
// move up if not hitting wall
if(keyboard_check(ord("W")) && y > edge && !place_meeting(x, y-move_speed, obj_tree) && !place_meeting(x, y-move_speed, obj_umbrella)){
	y -= move_speed
}


// door collision
if(place_meeting(x, y, obj_door)){
	var door = instance_place(x, y, obj_door)
	room_goto(door.destination_room)
}

// sun collision
if(place_meeting(x, y, obj_sun)){
	global.avatar_hp += 1
}

// puddle/cloud collision
if((place_meeting(x, y, obj_puddle) || place_meeting(x, y, obj_evil_cloud)) && !invincible){
	invincible = true
	invincible_timer = 0
	global.avatar_hp -= 1
}

if(invincible){
	invincible_timer += 1
	if(invincible_timer > 60){
		invincible = false
	}
}

if(global.avatar_hp == 0){
	global.avatar_hp = 10
	room_goto(rm_start)
}