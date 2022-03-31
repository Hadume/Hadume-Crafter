#> hd.rc:main/crafter/check.recipe/mirror/vert/move
#
# 鏡写し
#
# @within function hd.rc:main/crafter/check.recipe/mirror/vert/

## 仮に移動
	execute if data storage hd.rc:temp RecipeItems[{Slot:1b}] run data modify storage hd.rc:temp RecipeItems[{Slot:1b}].Slot set value 4b
	execute if data storage hd.rc:temp RecipeItems[{Slot:10b}] run data modify storage hd.rc:temp RecipeItems[{Slot:10b}].Slot set value 13b
	execute if data storage hd.rc:temp RecipeItems[{Slot:19b}] run data modify storage hd.rc:temp RecipeItems[{Slot:19b}].Slot set value 22b
## 写す
	execute if data storage hd.rc:temp RecipeItems[{Slot:3b}] run data modify storage hd.rc:temp RecipeItems[{Slot:3b}].Slot set value 1b
	execute if data storage hd.rc:temp RecipeItems[{Slot:12b}] run data modify storage hd.rc:temp RecipeItems[{Slot:12b}].Slot set value 10b
	execute if data storage hd.rc:temp RecipeItems[{Slot:21b}] run data modify storage hd.rc:temp RecipeItems[{Slot:21b}].Slot set value 19b
	execute if data storage hd.rc:temp RecipeItems[{Slot:4b}] run data modify storage hd.rc:temp RecipeItems[{Slot:4b}].Slot set value 3b
	execute if data storage hd.rc:temp RecipeItems[{Slot:13b}] run data modify storage hd.rc:temp RecipeItems[{Slot:13b}].Slot set value 12b
	execute if data storage hd.rc:temp RecipeItems[{Slot:22b}] run data modify storage hd.rc:temp RecipeItems[{Slot:22b}].Slot set value 21b
## 順番を調整
	execute if data storage hd.rc:temp RecipeItems[{Slot:1b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:1b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:2b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:2b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:3b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:3b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:10b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:10b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:11b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:11b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:12b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:12b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:19b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:19b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:20b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:20b}]
	execute if data storage hd.rc:temp RecipeItems[{Slot:21b}] run data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp RecipeItems[{Slot:21b}]
## 左上にずらす
	function hd.rc:lib/shift.slot/
	data modify storage hd.rc:temp RecipesCopy[-1].Items set from storage hd.rc:lib ShiftSlot
	data remove storage hd.rc:lib ShiftSlot
## 仮要素を挿入
	data modify storage hd.rc:temp RecipesCopy[-1].Items append from storage hd.rc: Blank[]
	execute if data storage hd.rc:temp ItemsCopy[{_:1b}] run data remove storage hd.rc:temp ItemsCopy[{_:1b}]
	data modify storage hd.rc:temp ItemsCopy append from storage hd.rc: Blank[]
## レシピを確認
	function hd.rc:main/crafter/check.recipe/normal.loop
## 横軸の鏡写しがあったら、データを戻す
	execute unless data storage hd.rc:temp MirrorLoop if score $HdRc.lib.Different HdRc.Temp matches 1 if data storage hd.rc:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.rc:main/crafter/check.recipe/mirror/vert/corner
