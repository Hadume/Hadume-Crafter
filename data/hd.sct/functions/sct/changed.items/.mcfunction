#> hd.sct:sct/changed.items/
#
# SCTの中身が変ってたら
#
# @within function hd.sct:sct/using

#> ScoreHolder
# @within function
#   hd.sct:sct/changed.items/*
#   hd.sct:sct/changed.items/remove.material/check
 #declare score_holder $HdSct.Changed
## 特殊作業台のどのアイテムが変ったか検知するための準備
	data modify storage hd.sct:temp ItemsCopy set from entity @s data.Using.Items
## SCT内のアイテムの数を取得
	execute store result score $HdSct.Changed HdSct.Temp if data storage hd.sct:temp ItemsCopy[{tag:{HdSct:{}}}]
## レシピブックを開いていたら
	execute if entity @s[scores={HdSct.Page=1..}] run function hd.sct:sct/changed.items/recipe_book/
## レシピブックを開いていなかったら
	execute unless entity @s[scores={HdSct.Page=1..}] if data storage hd.sct:temp ItemsCopy[] run function hd.sct:sct/changed.items/not.recipe_book
## 一時使用Storageをリセット
	data remove storage hd.sct:temp ItemsCopy
## 個人ストレージに保存
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
