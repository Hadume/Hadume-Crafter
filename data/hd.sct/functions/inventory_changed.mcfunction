#> hd.sct:inventory_changed
#
# SCTを見ているプレイヤーがインベントリーを変えたら
#
# @within advancement hd.sct:inventory_changed

## 見ているSCT
	tag @s add HdSctThis
	execute as @e[type=minecraft:marker,tag=HdSctUsing,distance=..6] if score @s HdSct.ID = @a[tag=HdSctThis,distance=0,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## 完成アイテムを渡す
	execute at @e[type=minecraft:marker,tag=HdSctThis] if data entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe unless data block ~ ~ ~ Items[{Slot:15b}] run function hd.sct:main/crafter/shift.click/
## ストレージにインベントリーを保存
	data modify entity @e[type=minecraft:marker,tag=HdSctThis,limit=1] data.Using.Inventory set from entity @s Inventory
## 
	tag @e[type=minecraft:marker,tag=HdSctThis,limit=1] remove HdSctThis
## 進捗を剥奪
	advancement revoke @s only hd.sct:inventory_changed
