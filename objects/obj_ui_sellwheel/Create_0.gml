target = instance_nearest(mouse_x, mouse_y, obj_tower)
move_snap(16,16)
upgprice = (target.level)*(target.buyprice/5)
sellprice = ((target.buyprice)+(upgprice))/2
sellbutton = instance_create_depth(x-12,y,-1,obj_ui_button_sell)
sellbutton.parent = self
sellbutton.target = target
sellbutton.sellprice = sellprice
upgradebutton = instance_create_depth(x+12,y,-1,obj_ui_button_upgrade)
upgradebutton.parent = self
upgradebutton.upgprice = upgprice
upgradebutton.target = target