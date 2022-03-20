#> hd.sct:main/crafter/repair.gui
#
# GUIを直す
#
# @within function
#   hd.sct:main/crafter/
#   hd.sct:recipe_maker/

## GUIを戻す
	function hd.sct:main/ui/
## データを消す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:{}}}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:21b}]
	execute if entity @s[tag=!HdSctRM] if data entity @s data.Using.Recipe run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
	execute if entity @s[tag=HdSctRM] run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
## アイテムを返す
	execute if data storage hd.sct:temp ItemsCopy[] run data modify storage hd.sct:lib ReturnItems append from storage hd.sct:temp ItemsCopy[]
	execute if data storage hd.sct:temp ItemsCopy[] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
