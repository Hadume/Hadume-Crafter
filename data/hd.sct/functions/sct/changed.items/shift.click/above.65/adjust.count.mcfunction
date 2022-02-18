#> hd.sct:sct/changed.items/shift.click/above.65/adjust.count
#
# 渡す完成アイテムのCountを調整する
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/

#> ScoreHolder
# @private
 #declare score_holder $HdSct.Give.Complete
 #declare score_holder $HdSct.Inventory.Slot1
## 調整するための準備
	execute store result score $HdSct.Give.Complete HdSct.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSctRecipe.Result.Count
	scoreboard players operation $HdSct.Inventory.Slot1 HdSct.Temp = $HdSct.Inventory.Slot HdSct.Temp
## 渡しすぎた完成アイテムを減らす
	scoreboard players operation $HdSct.Inventory.Slot1 HdSct.Temp %= $HdSct.Give.Complete HdSct.Temp
	execute if score $HdSct.Inventory.Slot1 HdSct.Temp matches 1.. store result score $HdSct.Complete.Count HdSct.Temp run scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp -= $HdSct.Inventory.Slot1 HdSct.Temp
## 完成アイテムを渡す回数を計算
	execute store result score $HdSct.Least.Number HdSct.Temp run scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp /= $HdSct.Give.Complete HdSct.Temp
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdSct.Give.Complete
	scoreboard players reset $HdSct.Inventory.Slot1
