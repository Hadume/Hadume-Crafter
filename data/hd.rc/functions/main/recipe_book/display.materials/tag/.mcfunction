#> hd.rc:main/recipe_book/display.materials/tag/
#
# Tagを代入
#
# @within function hd.rc:main/recipe_book/display.materials/

## データを移動
	data modify storage hd.rc:temp SelectedRecipe append from storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe.Items[]
## 仮要素を追加
	data modify storage hd.rc:temp SelectedRecipe append from storage hd.rc: Blank[]
## Tagを探す
	function hd.rc:main/recipe_book/display.materials/tag/loop
## データを返す
	execute if data storage hd.rc:temp RecipeBookTag run data modify entity @s data.Using.RecipeBookTag.Data set from storage hd.rc:temp RecipeBookTag
	execute if data storage hd.rc:temp RecipeBookTag run data modify entity @s data.Using.RecipeBookTag.Count set value 1b
## Storageを削除
	data remove storage hd.rc:temp SelectedRecipe
	data remove storage hd.rc:temp RecipeBookTag
	function hd.rc:lib/compare.item/reset
