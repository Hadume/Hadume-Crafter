#> hd.rc:main/recipe_book/page/change/next/
#
# 次へ
#
# @within function hd.rc:main/recipe_book/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.Success
## ページ数を増やす
	scoreboard players add @s HdRc.Page 1
## ページを変更
	function hd.rc:main/recipe_book/page/change/
## ページを作成
	execute unless data storage hd.rc:temp PageCopy[] if data storage hd.rc:recipe_book NotYet[] run function hd.rc:main/recipe_book/page/change/next/make.page
## ページが無かったら、ページ数を減らす
	execute unless data storage hd.rc:temp PageCopy[] unless data storage hd.rc:recipe_book NotYet[] run scoreboard players remove @s HdRc.Page 1
## Storageを削除
	data remove storage hd.rc:temp PageCopy
