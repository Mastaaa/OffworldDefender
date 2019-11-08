event_inherited()
name = "Gunner Turret"
inrange = ds_list_create()
range = 100
spd = 1
dmg = 30
level = 1
top = instance_create_depth(x,y,0,obj_gunner_top)
dir_last = 0
alarm_set(0,room_speed/spd)