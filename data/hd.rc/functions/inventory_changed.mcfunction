#> hd.rc:inventory_changed
#
# プレイヤーがインベントリーを変えたら
#
# @within advancement hd.rc:inventory_changed

## RCを特定
	tag @s add HdRcThis
	execute as @e[type=minecraft:marker,tag=HdRcUsing,distance=..6] if score @s HdRc.ID = @a[tag=HdRcThis,distance=0,limit=1] HdRc.ID run tag @s add HdRcThis
	tag @s remove HdRcThis
## 完成アイテムを渡す
	execute at @e[type=minecraft:marker,tag=HdRcThis] if data entity @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] data.Using.Recipe unless data block ~ ~ ~ Items[{Slot:15b}] run function hd.rc:main/crafter/shift.click/
## インベントリーを保存
	data modify entity @e[type=minecraft:marker,tag=HdRcThis,limit=1] data.Using.Inventory set from entity @s Inventory
## タグを外す
	tag @e[type=minecraft:marker,tag=HdRcThis,limit=1] remove HdRcThis
## 進捗を剥奪
	advancement revoke @s only hd.rc:inventory_changed
