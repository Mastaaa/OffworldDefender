draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_white)
draw_text(5,5,"Money: $" + string(score) + "\nExcavator HP: " + string(health) + "\nWave: " + string(obj_controller_waves.wave) + "\nNext Wave: " + string(obj_controller_waves.countdown))