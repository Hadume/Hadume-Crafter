#> hd.rc:main/crafter/check.recipe/prepare
#
# レシピ確認工程２。SCTの中のアイテムがレシピにあるか確認
#
# @within function hd.rc:main/crafter/check.recipe/

## Slotをずらす
	data modify storage hd.rc:lib ShiftSlot append from storage hd.rc:temp ItemsCopy[]
	function hd.rc:lib/shift.slot/
	data modify storage hd.rc:temp ItemsCopy set from storage hd.rc:lib ShiftSlot
## 一時使用Storageをリセット
	data remove storage hd.rc:lib ShiftSlot
## レシピのデータを他の場所に移す
	execute if data storage hd.rc:temp ItemsCopy[-1] unless data storage hd.rc:temp ItemsCopy[-2] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-9][]
	execute if data storage hd.rc:temp ItemsCopy[-2] unless data storage hd.rc:temp ItemsCopy[-3] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-8][]
	execute if data storage hd.rc:temp ItemsCopy[-3] unless data storage hd.rc:temp ItemsCopy[-4] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-7][]
	execute if data storage hd.rc:temp ItemsCopy[-4] unless data storage hd.rc:temp ItemsCopy[-5] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-6][]
	execute if data storage hd.rc:temp ItemsCopy[-5] unless data storage hd.rc:temp ItemsCopy[-6] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-5][]
	execute if data storage hd.rc:temp ItemsCopy[-6] unless data storage hd.rc:temp ItemsCopy[-7] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-4][]
	execute if data storage hd.rc:temp ItemsCopy[-7] unless data storage hd.rc:temp ItemsCopy[-8] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-3][]
	execute if data storage hd.rc:temp ItemsCopy[-8] unless data storage hd.rc:temp ItemsCopy[-9] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-2][]
	execute if data storage hd.rc:temp ItemsCopy[-9] run data modify storage hd.rc:temp RecipesCopy append from storage hd.rc.asset:recipes _[-1][]
## 
	data modify storage hd.rc:lib RemoveDisplay set value 1b
## レシピの確認
	execute if data storage hd.rc:temp RecipesCopy[] run function hd.rc:main/crafter/check.recipe/checking/loop
## 同じレシピがあったら、次の工程を実行する
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 if data storage hd.rc:temp RecipesCopy[] run function hd.rc:main/crafter/check.recipe/set.complete/
## 同じレシピが無かったら、完成アイテムSlotを変える
	execute unless data storage hd.rc:temp RecipesCopy[] run function hd.rc:main/crafter/check.recipe/reset.complete
## ライブラリのリセット
	function hd.rc:lib/compare.item/reset
## 一時使用ストレージのリセット
	data remove storage hd.rc:lib ShiftSlot
	data remove storage hd.rc:temp RecipesCopy
	execute if data storage hd.rc:temp RecipeItems run data remove storage hd.rc:temp RecipeItems
	execute if data storage hd.rc:temp ItemStash run data remove storage hd.rc:temp ItemStash
