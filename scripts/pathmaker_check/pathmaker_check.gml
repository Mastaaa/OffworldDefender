tilesize = global.tile_size
if (argument0 > room_width-tilesize*3){
	return false
}
else if (argument0 < tilesize*3){
	return false
}
else if (argument1 > room_height-tilesize*3){
	return false
}
else if (argument1 < tilesize*3){
	return false
}
else if position_meeting(argument0,argument1,obj_pathmaker_marker){
		return false
	}
else return true