#> hd.sct:block/unlock
#
# SCTの鍵を開ける
#
# @within function hd.sct:sct/tick

## 
	data remove block ~ ~ ~ Lock
## アイテムを取得
	data modify storage hd.sct:lib ReturnItems set from block ~ ~ ~ Items
	data remove storage hd.sct:lib ReturnItems[{tag:{HdSct:{}}}]
	execute if data entity @s data.Using.Recipe run data remove storage hd.sct:lib ReturnItems[{Slot:15b}]
	execute if data storage hd.sct:lib ReturnItems[] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## データを消す
	data remove entity @s data.Using
	data modify block ~ ~ ~ Items set value []
## プレイヤーのIDをリセット
	tag @s add HdSctThis
	execute as @a[scores={HdSct.ID=..2147483647}] if score @s HdSct.ID = @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID at @s run stopsound @s block minecraft:block.barrel.close
	execute as @a[scores={HdSct.ID=..2147483647}] if score @s HdSct.ID = @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID run scoreboard players reset @s HdSct.ID
	tag @s remove HdSctThis
## スコアをリセット
	execute if entity @s[scores={HdSct.Page=..2147483647}] run scoreboard players reset @s HdSct.Page
## Tag
	tag @s remove HdSctUsing
