#> hd.rc:main/recipe_book/display.materials/tag/loop
#
# Tagか確認
#
# @within function hd.rc:main/recipe_book/display.materials/tag/
# @private

## Tagを探す
	execute if data storage hd.rc:temp SelectedRecipe[-10].Tag run function hd.rc:main/recipe_book/display.materials/tag/pick.tag/
## データを削除
	data remove storage hd.rc:temp SelectedRecipe[-1]
## ループ
	execute if data storage hd.rc:temp SelectedRecipe[-10] run function hd.rc:main/recipe_book/display.materials/tag/loop
