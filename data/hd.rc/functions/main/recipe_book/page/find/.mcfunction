#> hd.rc:main/recipe_book/page/find/
#
# ページを探す準備
#
# @within function hd.rc:main/recipe_book/page/change/

#> ScoreHolder
# @within function hd.rc:main/recipe_book/page/find/*
 #declare score_holder $HdRc.Page.1
## データをコピー
	data modify storage hd.rc:temp PageCopy set from storage hd.rc:recipe_book _
## 
	function hd.rc:main/recipe_book/page/find/loop
## ScoreHolderを削除
	scoreboard players reset $HdRc.Page.1
