#> hd.rc:recipe_maker/check
#
# 
#
# @within function hd.rc:recipe_maker/

## SCT
	tag @s add HdSctThis
	execute as @a[distance=..6] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] HdRc.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## 
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
## 
	execute if data storage hd.rc:temp ItemsCopy[{Slot:15b}] run function hd.rc:recipe_maker/result
## 
	execute unless data storage hd.rc:temp Tell.Recipes run tellraw @a[tag=HdSctThis] {"text": "レシピ出力用の条件に達していません。","color":"red"}
## アイテムを返す
	execute if data storage hd.rc:temp ItemsCopy[{Slot:17b}] run data modify storage hd.rc:lib ReturnItems append from storage hd.rc:temp ItemsCopy[{Slot:17b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:17b}] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## GUIを戻す
	loot replace block ~ ~ ~ container.17 loot hd.rc:gui/export
## 
	tag @a[tag=HdSctThis] remove HdSctThis
## SCTの中身を取得
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
## 
	execute if data storage hd.rc:temp Tell run data remove storage hd.rc:temp Tell
