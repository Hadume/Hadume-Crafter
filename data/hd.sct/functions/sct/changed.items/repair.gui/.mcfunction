#> hd.sct:sct/changed.items/repair.gui/
#
# GUIを直す
#
# @within function
#   hd.sct:sct/changed.items/not.recipe_book
#   hd.sct:sct/add.recipe/

## データを消す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:21b}]
	execute if entity @s[tag=!HdSct.Recipe] if data entity @s data.Using.Recipe run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
	execute if entity @s[tag=HdSct.Recipe] run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
## アイテムを返す
	execute if data storage hd.sct:temp ItemsCopy[] run data modify storage hd.sct:lib ReturnItems set from storage hd.sct:temp ItemsCopy
	execute if data storage hd.sct:temp ItemsCopy[] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## もう一回チェストの中身を取得
	data modify storage hd.sct:temp ItemsCopy set from entity @s data.Using.Items
## GUIを戻す
	function hd.sct:block/ui
## SCTの中身を取得
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
