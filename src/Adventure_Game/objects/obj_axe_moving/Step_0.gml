// move right if not hitting wall
if(keyboard_check(ord("D")) && x < room_width - sprite_width - edge && !place_meeting(x+move_speed, y, obj_tree)){
	x += move_speed
}
// move left if not hitting wall
if(keyboard_check(ord("A")) && x > edge && !place_meeting(x-move_speed, y, obj_tree)){
	x -= move_speed
}
// move down if not hitting wall
if(keyboard_check(ord("S")) && y < room_height - sprite_height - edge && !place_meeting(x, y+move_speed, obj_tree)){
	y += move_speed
}
// move up if not hitting wall
if(keyboard_check(ord("W")) && y > edge && !place_meeting(x, y-move_speed, obj_tree)){
	y -= move_speed
}