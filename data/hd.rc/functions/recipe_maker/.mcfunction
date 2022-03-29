#> hd.rc:recipe_maker/
#
# 
#
# @within function hd.rc:main/using

#> ScoreHolder
# @private
 #declare score_holder $HdRc.Changed
## 特殊作業台のどのアイテムが変ったか検知するための準備
	data modify storage hd.rc:temp ItemsCopy set from entity @s data.Using.Items
## SCT内のアイテムの数を取得
	execute store result score $HdRc.Changed HdRc.Temp if data storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
## 特殊作業台のどのGUIのアイテムが変っていたら
	execute unless score $HdRc.Changed HdRc.Temp matches 17 if data storage hd.rc:temp ItemsCopy[{Slot:17b,tag:{HdRc:{}}}] run function hd.rc:main/crafter/repair.gui
## 
	execute unless score $HdRc.Changed HdRc.Temp matches 17 unless data storage hd.rc:temp ItemsCopy[{Slot:17b,tag:{HdRc:{}}}] run function hd.rc:recipe_maker/check
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdRc.Changed
## 一時使用Storageをリセット
	data remove storage hd.rc:temp ItemsCopy
