#> hd.rc:main/recipe_book/page/find/
#
# ページを探す
#
# @within function hd.rc:main/recipe_book/page/change/

#> ScoreHolder
# @within function hd.rc:main/recipe_book/page/find/*
 #declare score_holder $HdRc.Page.1
## ページデータをコピー
	data modify storage hd.rc:temp PageCopy set from storage hd.rc:recipe_book _
## 
	function hd.rc:main/recipe_book/page/find/loop
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdRc.Page.1
