#> hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
#
# アイテムのCountを決める
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/
# @private

## 完成アイテムを移動
	data modify storage hd.sct:lib PlaceItems prepend from storage hd.sct:temp SameItems[-1]
## 渡せる最大数をコピー
	scoreboard players operation $HdSct.Count.Max.1 HdSct.Temp = $HdSct.Count.Max HdSct.Temp
## アイテムのCountを取得
	execute store result score $HdSct.Count.0 HdSct.Temp run data get storage hd.sct:temp SameItems[-1].Count
## 
	scoreboard players operation $HdSct.Count.Max.1 HdSct.Temp -= $HdSct.Count.0 HdSct.Temp
## 
	execute store result storage hd.sct:lib PlaceItems[0].Count byte 1 run scoreboard players operation $HdSct.Count.0 HdSct.Temp += $HdSct.Result.Count HdSct.Temp
## 
	execute if score $HdSct.Count.0 HdSct.Temp > $HdSct.Count.Max HdSct.Temp run scoreboard players operation $HdSct.Count.0 HdSct.Temp = $HdSct.Count.Max HdSct.Temp
## Countを代入
	scoreboard players operation $HdSct.Result.Count HdSct.Temp -= $HdSct.Count.Max.1 HdSct.Temp
## データを削除
	data remove storage hd.sct:temp SameItems[-1]
## まだ渡せたらループ
	execute if score $HdSct.Result.Count HdSct.Temp matches 1.. if data storage hd.sct:temp SameItems[] run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
