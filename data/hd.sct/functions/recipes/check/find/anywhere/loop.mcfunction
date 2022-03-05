#> hd.sct:recipes/check/find/anywhere/loop
#
# レシピ確認(アイテムさえあってればどこにあってもいい)
#
# @within function hd.sct:recipes/check/find/anywhere/
# @private

## アイテムを移す
	data modify storage hd.sct:lib ComparedItem1 set from storage hd.sct:temp ItemsCopy[-1]
	data modify storage hd.sct:lib ComparedItem2 set from storage hd.sct:temp RecipesCopy[-1].Items[-1]
## 同じアイテムか確認
	function hd.sct:lib/compare.item/count
## アイテムが違ったら、データを戻しておく
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10] set from storage hd.sct:temp ItemStash
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run data remove storage hd.sct:temp RecipesCopy[-1].Items[-1]
## アイテムが同じだったら、データを移しておく
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run function hd.sct:recipes/check/find/anywhere/move
## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10] run function hd.sct:recipes/check/find/anywhere/loop
