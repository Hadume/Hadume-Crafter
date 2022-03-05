#> hd.sct:recipes/check/find/
#
# レシピ確認工程２。SCTの中のアイテムがレシピにあるか確認
#
# @within function hd.sct:recipes/check/

## Slotをずらす
	data modify storage hd.sct:lib ShiftSlot set from storage hd.sct:temp ItemsCopy
	function hd.sct:lib/shift.slot/
	data modify storage hd.sct:temp ItemsCopy set from storage hd.sct:lib ShiftSlot
## 一時使用Storageをリセット
	data remove storage hd.sct:lib ShiftSlot
## レシピのデータを他の場所に移す
	execute if data storage hd.sct:temp ItemsCopy[-1] unless data storage hd.sct:temp ItemsCopy[-2] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-9]
	execute if data storage hd.sct:temp ItemsCopy[-2] unless data storage hd.sct:temp ItemsCopy[-3] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-8]
	execute if data storage hd.sct:temp ItemsCopy[-3] unless data storage hd.sct:temp ItemsCopy[-4] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-7]
	execute if data storage hd.sct:temp ItemsCopy[-4] unless data storage hd.sct:temp ItemsCopy[-5] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-6]
	execute if data storage hd.sct:temp ItemsCopy[-5] unless data storage hd.sct:temp ItemsCopy[-6] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-5]
	execute if data storage hd.sct:temp ItemsCopy[-6] unless data storage hd.sct:temp ItemsCopy[-7] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-4]
	execute if data storage hd.sct:temp ItemsCopy[-7] unless data storage hd.sct:temp ItemsCopy[-8] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-3]
	execute if data storage hd.sct:temp ItemsCopy[-8] unless data storage hd.sct:temp ItemsCopy[-9] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-2]
	execute if data storage hd.sct:temp ItemsCopy[-9] run data modify storage hd.sct:temp RecipesCopy set from storage hd.sct.asset:recipes _[-1]
## レシピの確認
	execute if data storage hd.sct:temp RecipesCopy[] run function hd.sct:recipes/check/find/loop
## 同じレシピがあったら、次の工程を実行する
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:temp RecipesCopy[] run function hd.sct:recipes/check/set.complete/
## 同じレシピが無かったら、完成アイテムSlotを変える
	execute unless data storage hd.sct:temp RecipesCopy[] run function hd.sct:recipes/check/reset.complete
## ライブラリのリセット
	function hd.sct:lib/compare.item/reset
## 一時使用ストレージのリセット
	data remove storage hd.sct:lib ShiftSlot
	data remove storage hd.sct:temp RecipesCopy
	execute if data storage hd.sct:temp ItemStash run data remove storage hd.sct:temp ItemStash
	execute if data storage hd.sct:temp TagsCopy run data remove storage hd.sct:temp TagsCopy
