#> hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
#
# アイテムのCountを決める
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/
# @private

## 完成アイテムをコピー
	data modify storage hd.sct:lib PlaceItems append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Complete
## Countを代入
	execute if score $HdSct.Complete.Count HdSct.Temp matches ..63 store result storage hd.sct:lib PlaceItems[-1].Count byte 1 run scoreboard players get $HdSct.Complete.Count HdSct.Temp
	execute if score $HdSct.Complete.Count HdSct.Temp matches 64.. run data modify storage hd.sct:lib PlaceItems[-1].Count set value 64b
## スコアを減らす
	execute if score $HdSct.Complete.Count HdSct.Temp matches 64.. run scoreboard players remove $HdSct.Complete.Count HdSct.Temp 64
## Slotを消す
	data remove storage hd.sct:lib PlaceItems[-1].Slot
## 渡せたらループ
	execute if score $HdSct.Complete.Count HdSct.Temp matches 64.. run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
