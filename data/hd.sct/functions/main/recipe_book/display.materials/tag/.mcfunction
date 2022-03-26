#> hd.sct:main/recipe_book/display.materials/tag/
#
# Tagを代入
#
# @within function hd.sct:main/recipe_book/display.materials/

## データを移動
	data modify storage hd.sct:temp SelectedRecipe append from storage hd.sct:temp RecipesCopy[-15].tag.HdSct.Recipe.Items[]
## 仮要素を追加
	data modify storage hd.sct:temp SelectedRecipe append from storage hd.sct: Blank[]
## Tagを探す
	function hd.sct:main/recipe_book/display.materials/tag/loop
## データを返す
	execute if data storage hd.sct:temp RecipeBookTag run data modify entity @s data.Using.RecipeBookTag.Data set from storage hd.sct:temp RecipeBookTag
	execute if data storage hd.sct:temp RecipeBookTag run data modify entity @s data.Using.RecipeBookTag.Count set value 1b
## 一時使用Storageをリセット
	data remove storage hd.sct:temp SelectedRecipe
	data remove storage hd.sct:temp RecipeBookTag
	function hd.sct:lib/compare.item/reset
