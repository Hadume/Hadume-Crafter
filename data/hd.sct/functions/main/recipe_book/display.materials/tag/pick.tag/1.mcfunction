#> hd.sct:main/recipe_book/display.materials/tag/pick.tag/1
#
# Tagを追加する
#
# @within function hd.sct:main/recipe_book/display.materials/tag/pick.tag/

## データを追加
	data modify storage hd.sct:temp RecipeBookTag append value {Value:[],Origin:[],Item:{}}
## 
	data modify storage hd.sct:temp RecipeBookTag[-1].Origin set from storage hd.sct:lib TagsCopy[-1].Value
	data modify storage hd.sct:temp RecipeBookTag[-1].Item set from storage hd.sct:temp SelectedRecipe[-10]
