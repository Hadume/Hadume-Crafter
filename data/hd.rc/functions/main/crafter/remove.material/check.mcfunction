#> hd.rc:main/crafter/remove.material/check
#
# 素材アイテムを減らすか確認
#
# @within function hd.rc:main/crafter/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.Compare
## 完成アイテムがなかったら
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:15b}] run data modify storage hd.rc:temp ItemsCopy append value {Slot:15b}
## 完成アイテムを重ねる
	execute store success score $HdRc.Compare HdRc.Temp run data modify storage hd.rc:temp ItemsCopy[{Slot:15b}] set from entity @s data.Using.Recipe.Result
## 素材アイテムを減らす
	execute if score $HdRc.Compare HdRc.Temp matches 1 run function hd.rc:main/crafter/remove.material/main
## 
	scoreboard players add $HdRc.Changed HdRc.Temp 1
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdRc.Compare
