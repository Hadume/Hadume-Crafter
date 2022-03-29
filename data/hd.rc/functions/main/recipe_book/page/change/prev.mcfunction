#> hd.rc:main/recipe_book/page/change/prev
#
# 
#
# @within function hd.rc:main/recipe_book/

## ページを増やす
	execute if entity @s[scores={HdRc.Page=2..}] run scoreboard players remove @s HdRc.Page 1
## 
	function hd.rc:main/recipe_book/page/change/
## 一時使用Storageをリセット
	data remove storage hd.rc:temp PageCopy
