#> hd.rc:main/crafter/remove.material/as
#
# 
#
# @within function hd.rc:main/crafter/remove.material/main

## アイテムのCountを減らす
	function hd.rc:main/crafter/remove.material/loop
## 
	item replace entity @s weapon.mainhand with minecraft:air
## 
	tag @s remove HdSctThis
