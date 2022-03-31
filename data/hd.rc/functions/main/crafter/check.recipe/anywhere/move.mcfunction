#> hd.rc:main/crafter/check.recipe/anywhere/move
#
# データを移す
#
# @within function hd.rc:main/crafter/check.recipe/anywhere/loop

## 
	data modify storage hd.rc:temp RecipeItemsStash prepend from storage hd.rc:temp RecipesCopy[-1].Items[-10]
## データを削除
	data remove storage hd.rc:temp RecipesCopy[-1].Items[-10]
	data remove storage hd.rc:temp ItemsCopy[-1]
## 仮要素を挿入
	execute if data storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}]
	data modify storage hd.rc:temp RecipesCopy[-1].Items append from storage hd.rc: Blank[]
