enemyhpmax = 100
enemyhp = enemyhpmax
enemyspdmax = 1
enemyspd = enemyspdmax
enemydmgmultmax = 1
enemydmgmult = enemydmgmultmax
enemydmg = 5
crippleslow = 0
frostslow = 0
shockwaveoncd = false
weak = false
dot = 0
sprite_set_offset(self.sprite_index, self.sprite_width/2, self.sprite_height+1)
path_start(global.path_enemy, enemyspd, path_action_stop, 0)
viewscalex = view_get_wport(0)/room_width
viewscaley = view_get_hport(0)/room_height