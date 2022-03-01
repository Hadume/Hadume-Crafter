#> hd.sct:sct/inventory_changed
#
# SCTを見ているプレイヤーがインベントリーを変えたら
#
# @within advancement hd.sct:inventory_changed

## 見ているSCT
	tag @s add HdSctThis
	execute as @e[type=minecraft:armor_stand,tag=HdSctUsing,distance=..6] if score @s HdSct.ID = @a[tag=HdSctThis,distance=0,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## 個人ストレージを呼ぶ
	tag @s add HdSctThis
	execute as @e[type=minecraft:marker,tag=HdSctStorage,distance=..0.001] if score @s HdSct.ID = @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## 完成アイテムを渡す
	execute at @e[type=minecraft:armor_stand,tag=HdSctThis] if data entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe unless data block ~ ~ ~ Items[{Slot:15b}] run function hd.sct:sct/changed.items/shift.click/
## ストレージにインベントリーを保存
	data modify entity @e[predicate=hd.sct:storage,limit=1] data.Using.Inventory set from entity @s Inventory
## 進捗を剥奪
	advancement revoke @s only hd.sct:inventory_changed
## 
	tag @e[predicate=hd.sct:storage] remove HdSctThis
