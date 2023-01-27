change = irandom_range(1, 25)

// 1 in 25 chance to change direction
if(change == 1){
	dir = irandom_range(1, 4)
}

// move right
if(dir == 1 && x < room_width - sprite_width - edge && !place_meeting(x+move_speed, y, obj_tree)){
	x += move_speed
}
	
// move left
else if(dir == 2 && x > edge && !place_meeting(x-move_speed, y, obj_tree)){
	x -= move_speed
}
	
// move up
else if(dir == 3 && y < room_height - sprite_height - edge && !place_meeting(x, y+move_speed, obj_tree)){
	y += move_speed
}
	
// move down
else if(dir == 4 && y > edge && !place_meeting(x, y-move_speed, obj_tree)){
	y -= move_speed
}