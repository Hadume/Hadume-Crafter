#> hd.rc:main/recipe_book/page/change/prev
#
# 前へ
#
# @within function hd.rc:main/recipe_book/

## ページを減らす
	execute if entity @s[scores={HdRc.Page=2..}] run scoreboard players remove @s HdRc.Page 1
## ページを変更
	function hd.rc:main/recipe_book/page/change/
## Storageを削除
	data remove storage hd.rc:temp PageCopy
