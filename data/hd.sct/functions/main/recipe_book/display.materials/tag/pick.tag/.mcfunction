#> hd.sct:main/recipe_book/display.materials/tag/pick.tag/
#
# Tagを探す
#
# @within function hd.sct:main/recipe_book/display.materials/tag/loop

## Tagをコピー
	data modify storage hd.sct:lib ComparedItem2.Tag set from storage hd.sct:temp SelectedRecipe[-10].Tag
## 
	function hd.sct:lib/compare.item/id/tag/
## Tagがあったら、追加しておく
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run function hd.sct:main/recipe_book/display.materials/tag/pick.tag/1
