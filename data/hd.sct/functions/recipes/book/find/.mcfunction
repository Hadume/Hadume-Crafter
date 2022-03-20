#> hd.sct:recipes/book/find/
#
# ページを探す
#
# @within function hd.sct:sct/changed.items/recipe_book/change.page/

#> ScoreHolder
# @within function hd.sct:recipes/book/find/*
 #declare score_holder $HdSct.Page.1
## ページデータをコピー
	data modify storage hd.sct:temp PageCopy set from storage hd.sct:recipe_book _
## 
	function hd.sct:recipes/book/find/loop
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Page.1
