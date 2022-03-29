#> hd.rc:main/crafter/check.recipe/mirror/vert/corner
#
# 
#
# @within function hd.rc:main/crafter/check.recipe/mirror/vert/move

## 仮に移しておく
	execute if data storage hd.rc:temp RecipeItems[{Slot:1b}] run data modify storage hd.rc:temp RecipeItems[{Slot:1b}].Slot set value 28b
	execute if data storage hd.rc:temp RecipeItems[{Slot:2b}] run data modify storage hd.rc:temp RecipeItems[{Slot:2b}].Slot set value 29b
	execute if data storage hd.rc:temp RecipeItems[{Slot:3b}] run data modify storage hd.rc:temp RecipeItems[{Slot:3b}].Slot set value 30b
## 移す
	execute if data storage hd.rc:temp RecipeItems[{Slot:19b}] run data modify storage hd.rc:temp RecipeItems[{Slot:19b}].Slot set value 1b
	execute if data storage hd.rc:temp RecipeItems[{Slot:20b}] run data modify storage hd.rc:temp RecipeItems[{Slot:20b}].Slot set value 2b
	execute if data storage hd.rc:temp RecipeItems[{Slot:21b}] run data modify storage hd.rc:temp RecipeItems[{Slot:21b}].Slot set value 3b
	execute if data storage hd.rc:temp RecipeItems[{Slot:28b}] run data modify storage hd.rc:temp RecipeItems[{Slot:28b}].Slot set value 19b
	execute if data storage hd.rc:temp RecipeItems[{Slot:29b}] run data modify storage hd.rc:temp RecipeItems[{Slot:29b}].Slot set value 20b
	execute if data storage hd.rc:temp RecipeItems[{Slot:30b}] run data modify storage hd.rc:temp RecipeItems[{Slot:30b}].Slot set value 21b
## 移す
	execute if data storage hd.rc:temp RecipeItems[{Slot:1b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:1b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:2b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:2b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:3b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:3b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:10b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:10b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:11b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:11b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:12b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:12b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:19b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:19b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:20b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:20b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:21b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:21b}]
## ずらす
	function hd.rc:lib/shift.slot/
	data modify storage hd.rc:temp RecipesCopy[-1].Items set from storage hd.rc:lib ShiftSlot
	data remove storage hd.rc:lib ShiftSlot
## 空白を入れる
	data modify storage hd.rc:temp RecipesCopy[-1].Items append from storage hd.rc: Blank[]
	execute if data storage hd.rc:temp ItemsCopy[{_:1b}] run data remove storage hd.rc:temp ItemsCopy[{_:1b}]
	data modify storage hd.rc:temp ItemsCopy append from storage hd.rc: Blank[]
## レシピの確認
	data modify storage hd.rc:temp MirrorLoop set value 1b
	function hd.rc:main/crafter/check.recipe/mirror/vert/
	data remove storage hd.rc:temp MirrorLoop
