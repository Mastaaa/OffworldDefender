instance_destroy(other)
alarm_set(0,room_speed*(other.str+3))
alarm_set(1,room_speed)
dot = (1+other.str*2)/100
enemydmgmult = enemydmgmultmax-((other.str)*0.2)
weak = true