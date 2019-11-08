move_snap(16,16)
slowbutton = instance_create_depth(x+12,y,-1,obj_ui_button_buyslow)
slowbutton.parent = self
slowbutton.buyprice = 120
gunnerbutton = instance_create_depth(x-12,y,-1,obj_ui_button_buygunner)
gunnerbutton.parent = self
gunnerbutton.buyprice = 100
aoebutton = instance_create_depth(x,y-12,-1,obj_ui_button_buyaoe)
aoebutton.parent = self
aoebutton.buyprice = 130
weakenbutton = instance_create_depth(x,y+12,-1,obj_ui_button_buyweaken)
weakenbutton.parent = self
weakenbutton.buyprice = 120