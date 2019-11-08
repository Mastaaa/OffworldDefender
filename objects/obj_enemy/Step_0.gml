if enemyhp <= 0{
	instance_destroy(self)
}
enemyspd = enemyspdmax*1-(frostslow+crippleslow)
if enemyspd < enemyspdmax/5{
	enemyspd = enemyspdmax/5
}
path_speed = enemyspd