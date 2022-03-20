#> hd.sct:sct/changed.items/shift.click/find.changed.item/1
#
# 
#
# @within function hd.sct:sct/changed.items/shift.click/find.changed.item/loop

## 
	data modify storage hd.sct:temp InventoryStash append from storage hd.sct:temp InventoryCopy[-1]
## 
	data remove storage hd.sct:temp InventoryPast[-1]
	data remove storage hd.sct:temp InventoryCopy[-1]
## ループ
	execute if data storage hd.sct:temp InventoryPast[-1] run function hd.sct:sct/changed.items/shift.click/find.changed.item/loop
