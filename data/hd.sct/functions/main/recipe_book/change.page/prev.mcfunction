#> hd.sct:main/recipe_book/change.page/prev
#
# 
#
# @within function hd.sct:main/recipe_book/

## ページを増やす
	execute if entity @s[scores={HdSct.Page=2..}] run scoreboard players remove @s HdSct.Page 1
## 
	function hd.sct:main/recipe_book/change.page/
## ページが無かったら、スコアを減らす
	execute unless data storage hd.sct:temp PageCopy[] run scoreboard players add @s HdSct.Page 1
