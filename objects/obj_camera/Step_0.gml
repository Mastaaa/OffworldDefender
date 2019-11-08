key_up		= -keyboard_check(ord("W"));
key_down	= keyboard_check(ord("S"));
key_right	= keyboard_check(ord("D"));
key_left	= -keyboard_check(ord("A"));

hsp = movespeed * (key_right + key_left);
vsp = movespeed * (key_up + key_down);

collidemove(hsp, vsp, obj_wall)