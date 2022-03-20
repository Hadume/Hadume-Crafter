#> hd.sct:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

## レシピブック
	execute store result score $HdSct.Recipes.Now HdSct.Global if data storage hd.sct.asset:recipes _[][]
	execute if score $HdSct.Recipes.Now HdSct.Global < $HdSct.Recipes.Before HdSct.Global run function hd.sct:main/recipe_book/reset/tell

## 特殊作業台を設置する
	execute as @e[type=#hd.sct:item_frames] if predicate hd.sct:item.frame unless data entity @s Item.tag at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:barrel unless entity @e[type=minecraft:marker,tag=HdSct,distance=..0.001] run function hd.sct:block/set/
## SCTで常時実行
	execute as @e[type=minecraft:marker,tag=HdSct] at @s run function hd.sct:main/

## SCTアイテムを消す
	execute as @e[type=minecraft:item] if data entity @s Item.tag.HdSct run kill @s
	clear @a #hd.sct:all.items{HdSct:{}}
