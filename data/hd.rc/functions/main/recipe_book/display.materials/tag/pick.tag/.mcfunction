#> hd.rc:main/recipe_book/display.materials/tag/pick.tag/
#
# Tagを探す
#
# @within function hd.rc:main/recipe_book/display.materials/tag/loop

## Tagをコピー
	data modify storage hd.rc:lib ComparedItem2.Tag set from storage hd.rc:temp SelectedRecipe[-10].Tag
## 
	function hd.rc:lib/compare.item/id/tag/
## Tagを保存
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 if data storage hd.rc:lib TagsCopy[-1].Value[] run function hd.rc:main/recipe_book/display.materials/tag/pick.tag/1
