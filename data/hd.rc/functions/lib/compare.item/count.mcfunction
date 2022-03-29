#> hd.rc:lib/compare.item/count
#
# Countが同じか確認
#
# @internal

#> ScoreHolder
# @private
# @within function hd.rc:lib/compare.item/reset
 #declare score_holder $HdRc.Count.1
 #declare score_holder $HdRc.Count.2
## Countを取得
	execute store result score $HdRc.Count.1 HdRc.Temp run data get storage hd.rc:lib ComparedItem1.Count
	execute store result score $HdRc.Count.2 HdRc.Temp run data get storage hd.rc:lib ComparedItem2.Count
## Countを比較する(今回はfalseがOK判定なので、不等号の向きが逆でOK)
	execute unless data storage hd.rc:lib SameCount store success score $HdRc.lib.Different HdRc.Temp if score $HdRc.Count.1 HdRc.Temp < $HdRc.Count.2 HdRc.Temp
## 
	execute if data storage hd.rc:lib SameCount store success score $HdRc.lib.Different HdRc.Temp unless score $HdRc.Count.1 HdRc.Temp = $HdRc.Count.2 HdRc.Temp
## 同じだったら、Countの確認
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run function hd.rc:lib/compare.item/id/
