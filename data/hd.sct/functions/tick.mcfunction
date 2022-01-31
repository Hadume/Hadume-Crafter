#> hd.sct:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#> Tags
# @private
# @within function hd.sct:block/set/
 #declare tag HdSct
## 特殊作業台を設置
	execute as @e[type=#hd.sct:item_frames] if data entity @s {Item:{id:"minecraft:crafting_table",Count:1b}} unless data entity @s Item.tag at @s if block ~ ~-1 ~ minecraft:barrel run function hd.sct:block/set/
