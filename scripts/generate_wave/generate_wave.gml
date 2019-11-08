countdown = 30
wave++
tospawn_normal += wave*5
tospawn_normal_total = tospawn_normal
tospawn_heavy += wave*1
tospawn_heavy_total = tospawn_heavy
tospawn_fast += wave*2
tospawn_fast_total = tospawn_fast
tospawn_swarm += wave*4
tospawn_swarm_total = tospawn_swarm
if is_int64(wave/5){
	tospawn_boss += wave/5
	tospawn_boss_total = tospawn_boss
}
if(countdown <= 0){
	countdown = 30
	timeline_moment_add_script(tl_waves,tl_waves.timeline_position,generate_wave())
}