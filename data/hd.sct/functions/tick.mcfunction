#> hd.sct:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

#> Tags
# @private
# @within function hd.sct:block/set
# @within function hd.sct:block/opened
 #declare tag HdSct
## レシピブック
	execute store result score $HdSct.Recipes.Now HdSct.Global if data storage hd.sct.asset:recipes _[][]
	execute unless score $HdSct.Recipes.Now HdSct.Global = $HdSct.Recipes.Before HdSct.Global run function hd.sct:recipes/book/reset
## レシピを追加する
	execute if data storage hd.sct: AddRecipes[] run function hd.sct:recipes/add/

## 特殊作業台を設置する
	execute as @e[type=#hd.sct:item_frames] if predicate hd.sct:item.frame unless data entity @s Item.tag at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:barrel unless entity @e[type=minecraft:armor_stand,tag=HdSct,distance=..0.001] run function hd.sct:block/set
## SCTで常時実行
	execute as @e[type=minecraft:armor_stand,tag=HdSct] at @s run function hd.sct:sct/tick

## SCTアイテムを消す
	execute as @e[type=minecraft:item] if data entity @s Item.tag.HdSct run kill @s
	clear @a #hd.sct:all.items{HdSct:1b}
