#> hd.sct:main/recipe_book/page/change/prev
#
# 
#
# @within function hd.sct:main/recipe_book/

## ページを増やす
	execute if entity @s[scores={HdSct.Page=2..}] run scoreboard players remove @s HdSct.Page 1
## 
	function hd.sct:main/recipe_book/page/change/
## 一時使用Storageをリセット
	data remove storage hd.sct:temp PageCopy
