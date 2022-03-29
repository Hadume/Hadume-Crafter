#> hd.rc:main/crafter/shift.click/above.65/set.count.loop
#
# アイテムのCountを決める
#
# @within function hd.rc:main/crafter/shift.click/above.65/
# @private

## 完成アイテムを移動
	data modify storage hd.rc:lib PlaceItems prepend from storage hd.rc:temp SameItems[-1]
## 渡せる最大数をコピー
	scoreboard players operation $HdRc.Count.Max.1 HdRc.Temp = $HdRc.Count.Max HdRc.Temp
## アイテムのCountを取得
	execute store result score $HdRc.Count.0 HdRc.Temp run data get storage hd.rc:temp SameItems[-1].Count
## 
	scoreboard players operation $HdRc.Count.Max.1 HdRc.Temp -= $HdRc.Count.0 HdRc.Temp
## 
	execute store result storage hd.rc:lib PlaceItems[0].Count byte 1 run scoreboard players operation $HdRc.Count.0 HdRc.Temp += $HdRc.Result.Count HdRc.Temp
## 
	execute if score $HdRc.Count.0 HdRc.Temp > $HdRc.Count.Max HdRc.Temp run scoreboard players operation $HdRc.Count.0 HdRc.Temp = $HdRc.Count.Max HdRc.Temp
## Countを代入
	scoreboard players operation $HdRc.Result.Count HdRc.Temp -= $HdRc.Count.Max.1 HdRc.Temp
## データを削除
	data remove storage hd.rc:temp SameItems[-1]
## まだ渡せたらループ
	execute if score $HdRc.Result.Count HdRc.Temp matches 1.. if data storage hd.rc:temp SameItems[] run function hd.rc:main/crafter/shift.click/above.65/set.count.loop
