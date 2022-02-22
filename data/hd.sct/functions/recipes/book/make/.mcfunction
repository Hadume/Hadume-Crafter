#> hd.sct:recipes/book/make/
#
# レシピブックのページを作る
#
# @within function
#   hd.sct:recipes/book/open
#   hd.sct:sct/changed.items/recipe_book/next

#> ScoreHolder
# @private
# @within function hd.sct:recipes/book/reset
 #declare score_holder $HdSct.Page
#> ScoreHolder
# @private
# @within function hd.sct:recipes/book/make/loop
 #declare score_holder $HdSct.Slot
## ページデータを追加
	data modify storage hd.sct:recipe_book _ append value {Page:0,Data:[]}
## ページを設定
	execute store result storage hd.sct:recipe_book _[-1].Page int 1 run scoreboard players add @s HdSct.Page 1
## Slotの調整
	scoreboard players set $HdSct.Slot HdSct.Temp -1
## データを設定
	function hd.sct:recipes/book/make/loop
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Slot
