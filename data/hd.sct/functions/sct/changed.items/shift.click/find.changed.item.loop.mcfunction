#> hd.sct:sct/changed.items/shift.click/find.changed.item.loop
#
# 増えたアイテムを特定する
#
# @within function hd.sct:sct/changed.items/shift.click/
# @private

#> ScoreHolder
# @private
# @within function hd.sct:sct/changed.items/shift.click/
 #declare score_holder $HdSct.Compared
## アイテムを重ねる
	execute store success score $HdSct.Compared HdSct.Temp run data modify storage hd.sct:temp InventoryPast[-1] set from storage hd.sct:temp InventoryCopy[-1]
## 違ったらデータを消す
	execute if score $HdSct.Compared HdSct.Temp matches 0 run data remove storage hd.sct:temp InventoryPast[-1]
	execute if score $HdSct.Compared HdSct.Temp matches 0 run data remove storage hd.sct:temp InventoryCopy[-1]
## ループ
	execute if score $HdSct.Compared HdSct.Temp matches 0 if data storage hd.sct:temp InventoryPast[-1] run function hd.sct:sct/changed.items/shift.click/find.changed.item.loop
