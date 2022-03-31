#> hd.rc:main/recipe_book/close
#
# レシピブックを閉じる
#
# @within function hd.rc:main/recipe_book/

## データを削除
	data remove storage hd.rc:temp ItemsCopy
## ページ数を削除
	scoreboard players reset @s HdRc.Page
## レシピアイテムSlotを削除
	function hd.rc:main/ui/
