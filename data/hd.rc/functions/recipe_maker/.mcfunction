#> hd.rc:recipe_maker/
#
# RM
#
# @within function hd.rc:main/changed.items/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.Changed
## どのアイテムが変ったかの検知の準備
	data modify storage hd.rc:temp ItemsCopy set from entity @s data.Using.Items
## RM内のアイテムの数を取得
	execute store result score $HdRc.Changed HdRc.Temp if data storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
## RMのGUIのアイテムが変っていたら
	execute unless score $HdRc.Changed HdRc.Temp matches 17 if data storage hd.rc:temp ItemsCopy[{Slot:17b,tag:{HdRc:{}}}] run function hd.rc:main/crafter/repair.gui
## レシピデータを出力するか確認
	execute unless score $HdRc.Changed HdRc.Temp matches 17 unless data storage hd.rc:temp ItemsCopy[{Slot:17b,tag:{HdRc:{}}}] run function hd.rc:recipe_maker/check
## ScoreHolderを削除
	scoreboard players reset $HdRc.Changed
## Storageを削除
	data remove storage hd.rc:temp ItemsCopy
