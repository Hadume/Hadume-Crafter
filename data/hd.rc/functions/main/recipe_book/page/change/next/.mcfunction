#> hd.rc:main/recipe_book/page/change/next/
#
# 次のページへ
#
# @within function hd.rc:main/recipe_book/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.Success
## ページを増やす
	scoreboard players add @s HdRc.Page 1
## 
	function hd.rc:main/recipe_book/page/change/
## 
	execute unless data storage hd.rc:temp PageCopy[] if data storage hd.rc:recipe_book NotYet[] run function hd.rc:main/recipe_book/page/change/next/make.page
## 
	execute unless data storage hd.rc:temp PageCopy[] unless data storage hd.rc:recipe_book NotYet[] run scoreboard players remove @s HdRc.Page 1
## 一時使用Storageをリセット
	data remove storage hd.rc:temp PageCopy
