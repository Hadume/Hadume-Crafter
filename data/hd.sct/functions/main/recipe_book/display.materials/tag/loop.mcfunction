#> hd.sct:main/recipe_book/display.materials/tag/loop
#
# Tagか確認
#
# @within function hd.sct:main/recipe_book/display.materials/tag/
# @private

## Tagだったら、Tagを探す
	execute if data storage hd.sct:temp SelectedRecipe[-10].Tag run function hd.sct:main/recipe_book/display.materials/tag/pick.tag/
## データをずらす
	data remove storage hd.sct:temp SelectedRecipe[-1]
## データがあったら、ループ
	execute if data storage hd.sct:temp SelectedRecipe[-10] run function hd.sct:main/recipe_book/display.materials/tag/loop
