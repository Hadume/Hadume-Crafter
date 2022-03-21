#> hd.sct:main/recipe_book/page/change/next/
#
# 次のページへ
#
# @within function hd.sct:main/recipe_book/

#> ScoreHolder
# @private
 #declare score_holder $HdSct.Success
## ページを増やす
	scoreboard players add @s HdSct.Page 1
## 
	function hd.sct:main/recipe_book/page/change/
## 
	execute unless data storage hd.sct:temp PageCopy[] if data storage hd.sct:recipe_book NotYet[] run function hd.sct:main/recipe_book/page/change/next/make.page
## 
	execute unless data storage hd.sct:temp PageCopy[] unless data storage hd.sct:recipe_book NotYet[] run scoreboard players remove @s HdSct.Page 1
## 一時使用Storageをリセット
	data remove storage hd.sct:temp PageCopy
