#> hd.sct:recipes/check/find/mirror/vert/move
#
# 縦軸に鏡写しをする
#
# @within function hd.sct:recipes/check/find/mirror/vert/

## 仮に移しておく
	execute if data storage hd.sct:temp RecipeItems[{Slot:1b}] run data modify storage hd.sct:temp RecipeItems[{Slot:1b}].Slot set value 4b
	execute if data storage hd.sct:temp RecipeItems[{Slot:10b}] run data modify storage hd.sct:temp RecipeItems[{Slot:10b}].Slot set value 13b
	execute if data storage hd.sct:temp RecipeItems[{Slot:19b}] run data modify storage hd.sct:temp RecipeItems[{Slot:19b}].Slot set value 22b
## 写す
	execute if data storage hd.sct:temp RecipeItems[{Slot:3b}] run data modify storage hd.sct:temp RecipeItems[{Slot:3b}].Slot set value 1b
	execute if data storage hd.sct:temp RecipeItems[{Slot:12b}] run data modify storage hd.sct:temp RecipeItems[{Slot:12b}].Slot set value 10b
	execute if data storage hd.sct:temp RecipeItems[{Slot:21b}] run data modify storage hd.sct:temp RecipeItems[{Slot:21b}].Slot set value 19b
	execute if data storage hd.sct:temp RecipeItems[{Slot:4b}] run data modify storage hd.sct:temp RecipeItems[{Slot:4b}].Slot set value 3b
	execute if data storage hd.sct:temp RecipeItems[{Slot:13b}] run data modify storage hd.sct:temp RecipeItems[{Slot:13b}].Slot set value 12b
	execute if data storage hd.sct:temp RecipeItems[{Slot:22b}] run data modify storage hd.sct:temp RecipeItems[{Slot:22b}].Slot set value 21b
## 順番を整える
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
	function hd.sct:recipes/check/find/normal.loop
## 横軸の鏡写しがあったら、データを戻しておく
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_HOR run data modify storage hd.sct:temp ItemsCopy append from storage hd.sct: Blank[]
## 一時使用Storageをリセット
	data remove storage hd.sct:lib ShiftSlot
