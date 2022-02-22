#> hd.sct:sct/changed.items/
#
# SCTの中身が変ってたら
#
# @within function hd.sct:sct/using

#> 仮
# @private
# @within function hd.sct:sct/changed.items/recipe_book/
 #declare tag HdSctRecipeBook
#> ScoreHolder
# @within function hd.sct:sct/changed.items/*
 #declare score_holder $HdSct.Changed
## 特殊作業台のどのアイテムが変ったか検知するための準備
	data modify storage hd.sct:temp ItemsCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items
## SCT内のアイテムの数を取得
	execute store result score $HdSct.Changed HdSct.Temp if data storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
## レシピブックを開いていたら
	execute if entity @s[tag=HdSctRecipeBook] run function hd.sct:sct/changed.items/recipe_book/
## レシピブックを開いていなかったら
	execute if entity @s[tag=!HdSctRecipeBook] if data storage hd.sct:temp ItemsCopy run function hd.sct:sct/changed.items/not.recipe_book
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Changed
## 一時使用Storageをリセット
	data remove storage hd.sct:temp ItemsCopy
## 個人ストレージに保存
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items set from block ~ ~ ~ Items
