#> hd.rc:main/crafter/shift.click/above.65/set.count.loop1
#
# Countを代入
#
# @within function hd.rc:main/crafter/shift.click/above.65/
# @private

## 完成アイテムをコピー
	data modify storage hd.rc:lib PlaceItems prepend from entity @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] data.Using.Recipe.Result
## Countを代入
	execute store result storage hd.rc:lib PlaceItems[0].Count byte 1 run scoreboard players get $HdRc.Count.Max HdRc.Temp
## 渡せる数を計算
	scoreboard players operation $HdRc.Result.Count HdRc.Temp -= $HdRc.Count.Max HdRc.Temp
## 過剰に渡したら、Countを調整
	execute if score $HdRc.Result.Count HdRc.Temp matches ..-1 store result score $HdRc.Count.0 HdRc.Temp run data get storage hd.rc:lib PlaceItems[0].Count
	execute if score $HdRc.Result.Count HdRc.Temp matches ..-1 store result storage hd.rc:lib PlaceItems[0].Count byte 1 run scoreboard players operation $HdRc.Count.0 HdRc.Temp += $HdRc.Result.Count HdRc.Temp
## ループ
	execute if score $HdRc.Result.Count HdRc.Temp matches 1.. run function hd.rc:main/crafter/shift.click/above.65/set.count.loop1
