#> hd.sct:sct/changed.items/shift.click/find.changed.item/loop
#
# 増えたアイテムを特定する
#
# @within function
#   hd.sct:sct/changed.items/shift.click/
#   hd.sct:sct/changed.items/shift.click/find.changed.item/1

#> ScoreHolder
# @within function
#   hd.sct:sct/changed.items/shift.click/
#   hd.sct:sct/changed.items/shift.click/find.changed.item/*
 #declare score_holder $HdSct.Compared
## アイテムを重ねる
	execute store success score $HdSct.Compared HdSct.Temp run data modify storage hd.sct:temp InventoryPast[-1] set from storage hd.sct:temp InventoryCopy[-1]
## 違ったらデータを消す
	execute if score $HdSct.Compared HdSct.Temp matches 0 run function hd.sct:sct/changed.items/shift.click/find.changed.item/1
