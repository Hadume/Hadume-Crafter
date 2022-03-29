#> hd.rc:main/crafter/check.recipe/anywhere/
#
# レシピ確認の準備
#
# @within function hd.rc:main/crafter/check.recipe/checking/loop

## レシピ確認
	function hd.rc:main/crafter/check.recipe/anywhere/loop
## 要らない物を消す
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 if data storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}]
## レシピが同じだったら
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run data modify storage hd.rc:temp RecipesCopy[-1].Items set from storage hd.rc:temp RecipeItemsStash
## 一時レシピアイテムを消す
	execute if data storage hd.rc:temp RecipeItemsStash run data remove storage hd.rc:temp RecipeItemsStash
