#> hd.rc:main/crafter/check.recipe/anywhere/loop
#
# レシピ確認(アイテムさえあってればどこにあってもいい)
#
# @within function hd.rc:main/crafter/check.recipe/anywhere/
# @private

## データを移しておく
	data modify storage hd.rc:temp ItemStash set from storage hd.rc:temp RecipesCopy[-1].Items[-10]
## アイテムを移す
	data modify storage hd.rc:lib ComparedItem1 set from storage hd.rc:temp ItemsCopy[-10]
	data modify storage hd.rc:lib ComparedItem2 set from storage hd.rc:temp RecipesCopy[-1].Items[-10]
## 同じアイテムか確認
	function hd.rc:lib/compare.item/count
## アイテムが違ったら、データを戻しておく
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run data modify storage hd.rc:temp RecipesCopy[-1].Items[-10] set from storage hd.rc:temp ItemStash
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run data remove storage hd.rc:temp RecipesCopy[-1].Items[-1]
## アイテムが同じだったら、データを移しておく
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run function hd.rc:main/crafter/check.recipe/anywhere/move
## 
	execute if data storage hd.rc:temp RecipesCopy[-1].Items[-10] run function hd.rc:main/crafter/check.recipe/anywhere/loop
