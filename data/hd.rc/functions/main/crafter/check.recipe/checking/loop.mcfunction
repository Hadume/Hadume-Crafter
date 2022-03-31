#> hd.rc:main/crafter/check.recipe/checking/loop
#
# レシピを確認するための準備
#
# @within function hd.rc:main/crafter/check.recipe/prepare
# @private

## 仮要素を追加
	data modify storage hd.rc:temp ItemsCopy append from storage hd.rc: Blank[]
	data modify storage hd.rc:temp RecipesCopy[-1].Items append from storage hd.rc: Blank[]
## 確認
	execute if data storage hd.rc:temp RecipesCopy[-1].Options.Anywhere run function hd.rc:main/crafter/check.recipe/anywhere/
	execute unless data storage hd.rc:temp RecipesCopy[-1].Options.Anywhere run function hd.rc:main/crafter/check.recipe/checking/unless.anywhere
## データを削除
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run data remove storage hd.rc:temp RecipesCopy[-1]
## データを戻す
	execute if data storage hd.rc:temp ItemsCopy[{_:1b}] run data remove storage hd.rc:temp ItemsCopy[{_:1b}]
## ループ
	execute if data storage hd.rc:temp RecipesCopy[] if score $HdRc.lib.Different HdRc.Temp matches 1 run function hd.rc:main/crafter/check.recipe/checking/loop
