#> hd.rc:main/recipe_book/display.materials/tag/loop
#
# Tagか確認
#
# @within function hd.rc:main/recipe_book/display.materials/tag/
# @private

## Tagだったら、Tagを探す
	execute if data storage hd.rc:temp SelectedRecipe[-10].Tag run function hd.rc:main/recipe_book/display.materials/tag/pick.tag/
## データをずらす
	data remove storage hd.rc:temp SelectedRecipe[-1]
## データがあったら、ループ
	execute if data storage hd.rc:temp SelectedRecipe[-10] run function hd.rc:main/recipe_book/display.materials/tag/loop
