randomize()
global.tile_size = 16
length_modifier = irandom_range(3,3)
segment_length = global.tile_size*length_modifier
total_length = 0
x_original = x
y_original = y
size_goal = 40
while total_length < size_goal{
	x= irandom_range(2, 14)*global.tile_size
	y= irandom_range(2, 14)*global.tile_size
	move_snap(global.tile_size,global.tile_size)
	global.path_enemy = path_add()
	instance_create_depth(x,y,50,obj_pathmaker_marker)
	path_add_point(global.path_enemy,x,y,room_speed)
	instance_create_depth(x,y,0,obj_enemy_spawner)
	loop = 0
	//Create a path, stopping after 500 path iterations if it gets stuck
	while loop < 500 and total_length < size_goal{
		path_direction = choose("left", "right", "up", "down")
			switch path_direction{
			
				case "left":
					if pathmaker_check(x - segment_length,y) = true{
						x -= segment_length
						instance_create_depth(x,y,50,obj_pathmaker_marker)
						path_add_point(global.path_enemy,x,y,room_speed)
						i = 1
						while i < length_modifier{
							instance_create_depth(x+global.tile_size*i,y,50,obj_pathmaker_marker)
							i++
						}
						total_length+=length_modifier
					}
				break
			
				case "right":
					if pathmaker_check(x + segment_length,y) = true{
						x += segment_length
						instance_create_depth(x,y,50,obj_pathmaker_marker)
						path_add_point(global.path_enemy,x,y,room_speed)
						i = 1
						while i < length_modifier{
							instance_create_depth(x-global.tile_size*i,y,50,obj_pathmaker_marker)	
							i++
						}
						total_length+=length_modifier
					}
				break
			
				case "up":
					if pathmaker_check(x, y - segment_length) = true{
						y -= segment_length
						instance_create_depth(x,y,50,obj_pathmaker_marker)
						path_add_point(global.path_enemy,x,y,room_speed)
						i = 1
						while i < length_modifier{
							instance_create_depth(x,y+global.tile_size*i,50,obj_pathmaker_marker)	
							i++
						}
						total_length+=length_modifier
					}
				break
			
				case "down":
					if pathmaker_check(x,y + segment_length) = true{
						y += segment_length
						instance_create_depth(x,y,50,obj_pathmaker_marker)
						path_add_point(global.path_enemy,x,y,room_speed)
						i = 1
						while i < length_modifier{
							instance_create_depth(x,y-global.tile_size*i,50,obj_pathmaker_marker)
							i++
						}
						total_length+=length_modifier
					}
				break
			}
			loop++
	}
	//Check if created path is of target length, delete and restart if not
	if total_length < size_goal{
		total_length = 0
		path_delete(global.path_enemy)
		with obj_pathmaker_marker{
			instance_destroy(self)	
		}
		with obj_enemy_spawner{
			instance_destroy(self)	
		}
		x = x_original
		y = y_original
	}
}
instance_create_depth(x-8, y+8, 0, obj_excavator) //Issue: pathmaker tries to make 1 more path, doesn't, but still moves as if it were going to
path_set_kind(global.path_enemy, 0)
path_set_closed(global.path_enemy, 0)
path_endaction = path_action_stop
x = x_original
y = y_original
