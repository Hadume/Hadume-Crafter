#> hd.rc:main/crafter/shift.click/above.65/adjust.count
#
# 完成アイテムのCountを調整
#
# @within function hd.rc:main/crafter/shift.click/above.65/

#> ScoreHolder
# @private
 #declare score_holder $HdRc.Give.Result
 #declare score_holder $HdRc.Inventory.Slot1
## 調整の準備
	execute store result score $HdRc.Give.Result HdRc.Temp run data get entity @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] data.Using.Recipe.Result.Count
	scoreboard players operation $HdRc.Inventory.Slot1 HdRc.Temp = $HdRc.Inventory.Slot HdRc.Temp
## 渡しすぎた完成アイテムを減らす
	scoreboard players operation $HdRc.Inventory.Slot1 HdRc.Temp %= $HdRc.Give.Result HdRc.Temp
	execute if score $HdRc.Inventory.Slot1 HdRc.Temp matches 1.. store result score $HdRc.Result.Count HdRc.Temp run scoreboard players operation $HdRc.Inventory.Slot HdRc.Temp -= $HdRc.Inventory.Slot1 HdRc.Temp
## 完成アイテムを渡す回数を計算
	execute store result score $HdRc.Least.Number HdRc.Temp run scoreboard players operation $HdRc.Inventory.Slot HdRc.Temp /= $HdRc.Give.Result HdRc.Temp
## ScoreHolderを削除
	scoreboard players reset $HdRc.Give.Result
	scoreboard players reset $HdRc.Inventory.Slot1
