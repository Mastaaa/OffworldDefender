if !instance_exists(enemy){
	instance_destroy(self)	
}
else{
	image_angle = point_direction(x,y,enemy.x,enemy.y)
	move_towards_point(enemy.x+(enemy.sprite_width/2), enemy.y-(enemy.sprite_height/2), 5)
}