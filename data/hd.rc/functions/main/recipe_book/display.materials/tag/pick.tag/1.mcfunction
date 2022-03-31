#> hd.rc:main/recipe_book/display.materials/tag/pick.tag/1
#
# Tagを保存
#
# @within function hd.rc:main/recipe_book/display.materials/tag/pick.tag/

## データを追加
	data modify storage hd.rc:temp RecipeBookTag append value {Value:[],Origin:[],Item:{}}
## 
	data modify storage hd.rc:temp RecipeBookTag[-1].Origin set from storage hd.rc:lib TagsCopy[-1].Value
	data modify storage hd.rc:temp RecipeBookTag[-1].Item set from storage hd.rc:temp SelectedRecipe[-10]
