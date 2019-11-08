variance = random_range(-variance_coef,variance_coef)
if countdown < 0{
	if wave >= 5{
	timeline_moment_add_script(tl_waves,timeline_position,generate_wave())
	}
	else{
	countdown = 0
	}
}