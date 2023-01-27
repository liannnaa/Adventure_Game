// axe collision
if(place_meeting(x, y, obj_avatar)){
	axe_eqipped = true
	var p = instance_place(x, y, obj_avatar)
	axe = instance_create_depth(obj_avatar.x + obj_avatar.sprite_width, obj_avatar.y + obj_avatar.sprite_height/2, 0, obj_axe_moving)
	instance_destroy()
}
