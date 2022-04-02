#> hd.rc:main/crafter/repair.gui
#
# GUIを戻す
#
# @within function
#   hd.rc:main/crafter/
#   hd.rc:recipe_maker/

## GUIを戻す
	function hd.rc:main/ui/
## データを削除
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:1b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:2b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:3b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:10b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:11b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:12b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:19b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:20b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:21b}] run data remove storage hd.rc:temp ItemsCopy[{Slot:21b}]
	execute if entity @s[tag=!HdRcRM,nbt={data:{Using:{Recipe:{}}}}] run data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
	execute if entity @s[tag=HdRcRM] run data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
## アイテムを返す
	execute if data storage hd.rc:temp ItemsCopy[] run data modify storage hd.rc:lib ReturnItems append from storage hd.rc:temp ItemsCopy[]
	execute if data storage hd.rc:temp ItemsCopy[] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
