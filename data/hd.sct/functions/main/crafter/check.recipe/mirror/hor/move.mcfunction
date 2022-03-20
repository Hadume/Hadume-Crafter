#> hd.sct:main/crafter/check.recipe/mirror/hor/move
#
# 
#
# @within function hd.sct:main/crafter/check.recipe/mirror/hor/

## 仮に移しておく
	execute if data storage hd.sct:temp RecipeItems[{Slot:1b}] run data modify storage hd.sct:temp RecipeItems[{Slot:1b}].Slot set value 28b
	execute if data storage hd.sct:temp RecipeItems[{Slot:2b}] run data modify storage hd.sct:temp RecipeItems[{Slot:2b}].Slot set value 29b
	execute if data storage hd.sct:temp RecipeItems[{Slot:3b}] run data modify storage hd.sct:temp RecipeItems[{Slot:3b}].Slot set value 30b
## 移す
	execute if data storage hd.sct:temp RecipeItems[{Slot:19b}] run data modify storage hd.sct:temp RecipeItems[{Slot:19b}].Slot set value 1b
	execute if data storage hd.sct:temp RecipeItems[{Slot:20b}] run data modify storage hd.sct:temp RecipeItems[{Slot:20b}].Slot set value 2b
	execute if data storage hd.sct:temp RecipeItems[{Slot:21b}] run data modify storage hd.sct:temp RecipeItems[{Slot:21b}].Slot set value 3b
	execute if data storage hd.sct:temp RecipeItems[{Slot:28b}] run data modify storage hd.sct:temp RecipeItems[{Slot:28b}].Slot set value 19b
	execute if data storage hd.sct:temp RecipeItems[{Slot:29b}] run data modify storage hd.sct:temp RecipeItems[{Slot:29b}].Slot set value 20b
	execute if data storage hd.sct:temp RecipeItems[{Slot:30b}] run data modify storage hd.sct:temp RecipeItems[{Slot:30b}].Slot set value 21b
## 移す
	execute if data storage hd.sct:temp RecipeItems[{Slot:1b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:1b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:2b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:2b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:3b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:3b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:10b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:10b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:11b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:11b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:12b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:12b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:19b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:19b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:20b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:20b}]
	execute if data storage hd.sct:temp RecipeItems[{Slot:21b}] run data modify storage hd.sct:lib ShiftSlot append from storage hd.sct:temp RecipeItems[{Slot:21b}]
## ずらす
	function hd.sct:lib/shift.slot/
	data modify storage hd.sct:temp RecipesCopy[-1].Items set from storage hd.sct:lib ShiftSlot
## 空白を入れる
	data modify storage hd.sct:temp RecipesCopy[-1].Items append from storage hd.sct: Blank[]
	execute if data storage hd.sct:temp ItemsCopy[{_:1b}] run data remove storage hd.sct:temp ItemsCopy[{_:1b}]
	data modify storage hd.sct:temp ItemsCopy append from storage hd.sct: Blank[]
## レシピの確認
	function hd.sct:main/crafter/check.recipe/normal.loop
## 一時使用Storageをリセット
	data remove storage hd.sct:lib ShiftSlot
