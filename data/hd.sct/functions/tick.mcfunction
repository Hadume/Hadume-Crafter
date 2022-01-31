#> hd.sct:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#> Tags
# @private
# @within function hd.sct:block/set/
 #declare tag HdSct
## 特殊作業台を設置する
	execute as @e[type=#hd.sct:item_frames] if data entity @s {Item:{id:"minecraft:crafting_table",Count:1b}} unless data entity @s Item.tag at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:barrel unless entity @e[type=minecraft:armor_stand,tag=HdSct,distance=..0.001] run function hd.sct:block/set/
## 特殊作業台を破壊する
	execute as @e[type=minecraft:armor_stand,tag=HdSct] at @s unless block ~ ~ ~ minecraft:barrel run function hd.sct:block/break/
## 樽を壊したら
	execute as @a[scores={HdSct.Mined.Barrel=1..}] run scoreboard players reset @s HdSct.Mined.Barrel
