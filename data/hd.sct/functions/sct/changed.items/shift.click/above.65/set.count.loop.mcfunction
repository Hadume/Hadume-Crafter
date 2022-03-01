#> hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
#
# アイテムのCountを決める
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/
# @private

## 完成アイテムをコピー
	data modify storage hd.sct:lib PlaceItems prepend from entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe.Result
## Countを代入
	execute if score $HdSct.Result.Count HdSct.Temp < $HdSct.Count.Max HdSct.Temp store result storage hd.sct:lib PlaceItems[0].Count byte 1 run scoreboard players get $HdSct.Result.Count HdSct.Temp
	execute if score $HdSct.Result.Count HdSct.Temp >= $HdSct.Count.Max HdSct.Temp store result storage hd.sct:lib PlaceItems[0].Count byte 1 run scoreboard players get $HdSct.Count.Max HdSct.Temp
## スコアを減らす
	scoreboard players operation $HdSct.Result.Count HdSct.Temp -= $HdSct.Count.Max HdSct.Temp
## Slotを消す
	data remove storage hd.sct:lib PlaceItems[0].Slot
## 渡せたらループ
	execute if score $HdSct.Result.Count HdSct.Temp matches 1.. run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
