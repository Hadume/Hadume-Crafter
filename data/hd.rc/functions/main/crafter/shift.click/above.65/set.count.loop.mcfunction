#> hd.rc:main/crafter/shift.click/above.65/set.count.loop
#
# Countを代入
#
# @within function hd.rc:main/crafter/shift.click/above.65/
# @private

## 完成アイテムを移動
	data modify storage hd.rc:lib PlaceItems prepend from storage hd.rc:temp SameItems[-1]
## Stackの最大値をコピー
	scoreboard players operation $HdRc.Count.Max.1 HdRc.Temp = $HdRc.Count.Max HdRc.Temp
## Countを取得
	execute store result score $HdRc.Count.0 HdRc.Temp run data get storage hd.rc:temp SameItems[-1].Count
## Stackの最大値との差異を計算
	scoreboard players operation $HdRc.Count.Max.1 HdRc.Temp -= $HdRc.Count.0 HdRc.Temp
## Countを代入
	execute store result storage hd.rc:lib PlaceItems[0].Count byte 1 run scoreboard players operation $HdRc.Count.0 HdRc.Temp += $HdRc.Result.Count HdRc.Temp
## Stackの最大値より渡した値が大きかったら、CountをStackの最大値と同じに
	execute if score $HdRc.Count.0 HdRc.Temp > $HdRc.Count.Max HdRc.Temp run scoreboard players operation $HdRc.Count.0 HdRc.Temp = $HdRc.Count.Max HdRc.Temp
## 渡せる数を計算
	scoreboard players operation $HdRc.Result.Count HdRc.Temp -= $HdRc.Count.Max.1 HdRc.Temp
## データを削除
	data remove storage hd.rc:temp SameItems[-1]
## ループ
	execute if score $HdRc.Result.Count HdRc.Temp matches 1.. if data storage hd.rc:temp SameItems[] run function hd.rc:main/crafter/shift.click/above.65/set.count.loop
