#> hd.sct:sct/changed.items/recipe_book/display.materials/tag/
#
# Tagを代入
#
# @within function hd.sct:sct/changed.items/recipe_book/display.materials/
say Tagを表示
## データを移動
	data modify storage hd.sct:temp SelectedRecipe append from storage hd.sct:temp RecipesCopy[-15].tag.HdSct.Recipe.Items[]
## 仮要素を追加
	data modify storage hd.sct:temp SelectedRecipe append from storage hd.sct: Blank[]
## Tagを探す
	function hd.sct:sct/changed.items/recipe_book/display.materials/tag/loop
## データを返す
	data modify entity @s data.Using.RecipeBookTag.Data set from storage hd.sct:temp RecipeBookTag
	data modify entity @s data.Using.RecipeBookTag.Count set value 1b
## 一時使用Storageをリセット
	data remove storage hd.sct:temp SelectedRecipe
	data remove storage hd.sct:temp RecipeBookTag
	function hd.sct:lib/compare.item/reset
