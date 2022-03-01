#> hd.sct:sct/add.recipe/
#
# 
#
# @within function hd.sct:sct/using

#> ScoreHolder
# @private
 #declare score_holder $HdSct.Changed
## 特殊作業台のどのアイテムが変ったか検知するための準備
	data modify storage hd.sct:temp ItemsCopy set from entity @e[predicate=hd.sct:storage,limit=1] data.Using.Items
## SCT内のアイテムの数を取得
	execute store result score $HdSct.Changed HdSct.Temp if data storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
## 特殊作業台のどのGUIのアイテムが変っていたら
	execute unless score $HdSct.Changed HdSct.Temp matches 17 if data storage hd.sct:temp ItemsCopy[{Slot:17b,tag:{HdSct:1b}}] run function hd.sct:sct/changed.items/repair.gui/
## 
	execute unless score $HdSct.Changed HdSct.Temp matches 17 unless data storage hd.sct:temp ItemsCopy[{Slot:17b,tag:{HdSct:1b}}] run function hd.sct:sct/add.recipe/check
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Changed
## 一時使用Storageをリセット
	data remove storage hd.sct:temp ItemsCopy
## 個人ストレージに保存
	data modify entity @e[predicate=hd.sct:storage,limit=1] data.Using.Items set from block ~ ~ ~ Items
