#> hd.rc:main/crafter/check.recipe/normal.loop
#
# レシピ確認
#
# @private
# @within function
#   hd.rc:main/crafter/check.recipe/checking/unless.anywhere
#   hd.rc:main/crafter/check.recipe/mirror/*/*

## アイテムを移す
	data modify storage hd.rc:lib ComparedItem1 set from storage hd.rc:temp ItemsCopy[-10]
	data modify storage hd.rc:lib ComparedItem2 set from storage hd.rc:temp RecipesCopy[-1].Items[-10]
## アイテムが同じか確認
	function hd.rc:lib/compare.item/slot
## 仮アイテムを消す
	data remove storage hd.rc:temp ItemsCopy[-1]
	data remove storage hd.rc:temp RecipesCopy[-1].Items[-1]
## ループ
	execute if data storage hd.rc:temp ItemsCopy[-10] if data storage hd.rc:temp RecipesCopy[-1].Items[-10] if score $HdRc.lib.Different HdRc.Temp matches 0 run function hd.rc:main/crafter/check.recipe/normal.loop
