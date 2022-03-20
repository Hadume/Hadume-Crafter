#> hd.sct:sct/changed.items/remove.material/as
#
# 
#
# @within function hd.sct:sct/changed.items/remove.material/main

## アイテムのCountを減らす
	function hd.sct:sct/changed.items/remove.material/loop
## 
	item replace entity @s weapon.mainhand with minecraft:air
## 
	tag @s remove HdSctThis
