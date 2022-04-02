#> hd.rc:tick
#
# 常時実行
#
# @within tag/function minecraft:tick

## レシピブック
	execute store result score $HdRc.Recipes.Now HdRc.Global if data storage hd.rc.asset:recipes _[][]
	execute if score $HdRc.Recipes.Now HdRc.Global < $HdRc.Recipes.Before HdRc.Global run function hd.rc:main/recipe_book/reset/tell

## RCを設置
	execute as @e[type=#hd.rc:item_frames,nbt=!{Item:{tag:{}}}] if predicate hd.rc:item.frame at @s positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:barrel unless entity @e[type=minecraft:marker,tag=HdRc,distance=..0.001] run function hd.rc:block/set/
## RCで常時実行
	execute as @e[tag=HdRc] at @s run function hd.rc:rc

## RCアイテムを削除
	execute as @e[type=minecraft:item,nbt={Item:{tag:{HdRc:{}}}}] run kill @s
