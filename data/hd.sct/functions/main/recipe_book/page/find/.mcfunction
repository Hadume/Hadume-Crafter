#> hd.sct:main/recipe_book/page/find/
#
# ページを探す
#
# @within function hd.sct:main/recipe_book/page/change/

#> ScoreHolder
# @within function hd.sct:main/recipe_book/page/find/*
 #declare score_holder $HdSct.Page.1
## ページデータをコピー
	data modify storage hd.sct:temp PageCopy set from storage hd.sct:recipe_book _
## 
	function hd.sct:main/recipe_book/page/find/loop
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Page.1
