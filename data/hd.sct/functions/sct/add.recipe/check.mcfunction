#> hd.sct:sct/add.recipe/check
#
# 
#
# @within function hd.sct:sct/add.recipe/

## SCT
	tag @s add HdSctThis
	execute as @e[type=minecraft:player,distance=..6] if score @s HdSct.ID = @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## 
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
## 
	data modify storage hd.sct:temp Tell.Result set from storage hd.sct:temp ItemsCopy[{Slot:15b}]
	data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
## 
	execute if data storage hd.sct:temp ItemsCopy[] if data storage hd.sct:temp Tell.Result run function hd.sct:sct/add.recipe/export
## 
	execute unless data storage hd.sct:temp Tell.Recipes run tellraw @a[tag=HdSctThis] {"text": "レシピ出力用の条件に達していません。","color":"red"}
## 
	data remove storage hd.sct:temp Tell
## アイテムを返す
	execute if data storage hd.sct:temp ItemsCopy[{Slot:17b}] run data modify storage hd.sct:lib ReturnItems append from storage hd.sct:temp ItemsCopy[{Slot:17b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:17b}] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## GUIを戻す
	loot replace block ~ ~ ~ container.17 loot hd.sct:gui/export
## SCTの中身を取得
	data modify entity @e[predicate=hd.sct:storage,limit=1] data.Using.Items set from block ~ ~ ~ Items
## 
	tag @a[tag=HdSctThis] remove HdSctThis
