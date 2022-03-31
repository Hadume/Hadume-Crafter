#> hd.rc:block/unlock
#
# 鍵を開ける
#
# @within function hd.rc:main/

## 
	data remove block ~ ~ ~ Lock
## アイテムを返す
	data modify storage hd.rc:lib ReturnItems set from block ~ ~ ~ Items
	data remove storage hd.rc:lib ReturnItems[{tag:{HdRc:{}}}]
	execute if data entity @s data.Using.Recipe run data remove storage hd.rc:lib ReturnItems[{Slot:15b}]
	execute if data storage hd.rc:lib ReturnItems[] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## データを削除
	data remove entity @s data.Using
	data modify block ~ ~ ~ Items set value []
## プレイヤーのIDをリセット
	tag @s add HdRcThis
	execute as @a[scores={HdRc.ID=..2147483647}] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] HdRc.ID at @s run stopsound @s block minecraft:block.barrel.close
	execute as @a[scores={HdRc.ID=..2147483647}] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] HdRc.ID run scoreboard players reset @s HdRc.ID
	tag @s remove HdRcThis
## ページをリセット
	execute if entity @s[scores={HdRc.Page=..2147483647}] run scoreboard players reset @s HdRc.Page
## タグを外す
	tag @s remove HdRcUsing
