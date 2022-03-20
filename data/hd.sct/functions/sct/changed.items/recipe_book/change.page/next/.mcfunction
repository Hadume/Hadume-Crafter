#> hd.sct:sct/changed.items/recipe_book/change.page/next/
#
# 次のページへ
#
# @within function hd.sct:sct/changed.items/recipe_book/

#> ScoreHolder
# @private
 #declare score_holder $HdSct.Success
## ページを増やす
	scoreboard players add @s HdSct.Page 1
## 
	function hd.sct:sct/changed.items/recipe_book/change.page/
## 
	execute unless data storage hd.sct:temp PageCopy[] if data storage hd.sct:recipe_book NotYet[] run function hd.sct:sct/changed.items/recipe_book/change.page/next/make.page
## 
	execute unless data storage hd.sct:temp PageCopy[] unless data storage hd.sct:recipe_book NotYet[] run scoreboard players remove @s HdSct.Page 1
