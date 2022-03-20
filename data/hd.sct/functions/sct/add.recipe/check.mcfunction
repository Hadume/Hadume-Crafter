#> hd.sct:sct/add.recipe/check
#
# 
#
# @within function hd.sct:sct/add.recipe/

## SCT
	tag @s add HdSctThis
	execute as @a[distance=..6] if score @s HdSct.ID = @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## 
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:{}}}]
## 
	execute if data storage hd.sct:temp ItemsCopy[{Slot:15b}] run function hd.sct:sct/add.recipe/result
## 
	execute unless data storage hd.sct:temp Tell.Recipes run tellraw @a[tag=HdSctThis] {"text": "レシピ出力用の条件に達していません。","color":"red"}
## アイテムを返す
	execute if data storage hd.sct:temp ItemsCopy[{Slot:17b}] run data modify storage hd.sct:lib ReturnItems append from storage hd.sct:temp ItemsCopy[{Slot:17b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:17b}] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## GUIを戻す
	loot replace block ~ ~ ~ container.17 loot hd.sct:gui/export
## 
	tag @a[tag=HdSctThis] remove HdSctThis
## SCTの中身を取得
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
## 
	execute if data storage hd.sct:temp Tell run data remove storage hd.sct:temp Tell
