#> hd.rc:main/crafter/check.recipe/anywhere/
#
# レシピ確認の準備
#
# @within function hd.rc:main/crafter/check.recipe/checking/loop

## レシピを確認
	function hd.rc:main/crafter/check.recipe/anywhere/loop
## 仮要素を削除
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 if data storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}]
## レシピが同じだったら、レシピアイテムを戻す
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run data modify storage hd.rc:temp RecipesCopy[-1].Items set from storage hd.rc:temp RecipeItemsStash
## 一時レシピアイテムを削除
	execute if data storage hd.rc:temp RecipeItemsStash run data remove storage hd.rc:temp RecipeItemsStash
