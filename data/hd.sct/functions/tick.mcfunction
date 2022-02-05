#> hd.sct:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#> Tags
# @private
# @within function hd.sct:block/set/
 #declare tag HdSct
## レシピを追加する
	execute if data storage hd.sct: AddRecipes[] run function hd.sct:recipes/add/

## 特殊作業台を設置する
	execute as @e[type=#hd.sct:item_frames] if data entity @s {Item:{id:"minecraft:crafting_table",Count:1b}} unless data entity @s Item.tag at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:barrel unless entity @e[type=minecraft:armor_stand,tag=HdSct,distance=..0.001] run function hd.sct:block/set/
## 特殊作業台を破壊する
	execute as @e[type=minecraft:armor_stand,tag=HdSct] at @s unless block ~ ~ ~ minecraft:barrel run function hd.sct:block/break/

## SCTアイテムを消す
	execute as @e[type=minecraft:item] if data entity @s Item.tag.HdSctItem run kill @s
	clear @a #hd.sct:all.items{HdSctItem:1b}
