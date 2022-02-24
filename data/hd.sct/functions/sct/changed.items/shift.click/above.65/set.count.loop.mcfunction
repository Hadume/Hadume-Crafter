#> hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
#
# アイテムのCountを決める
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/
# @private

## 完成アイテムをコピー
	data modify storage hd.sct:lib PlaceItems prepend from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Result
## Countを代入
	execute if score $HdSct.Result.Count HdSct.Temp matches ..63 store result storage hd.sct:lib PlaceItems[0].Count byte 1 run scoreboard players get $HdSct.Result.Count HdSct.Temp
	execute if score $HdSct.Result.Count HdSct.Temp matches 64.. run data modify storage hd.sct:lib PlaceItems[0].Count set value 64b
## スコアを減らす
	scoreboard players remove $HdSct.Result.Count HdSct.Temp 64
## Slotを消す
	data remove storage hd.sct:lib PlaceItems[0].Slot
## 渡せたらループ
	execute if score $HdSct.Result.Count HdSct.Temp matches 1.. run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
