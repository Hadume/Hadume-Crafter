#> hd.sct:sct/changed.items/shift.click/above.65/find.same.items.loop
#
# 
#
# @within function hd.sct:sct/changed.items/shift.click/above.65/
# @private

## 
	data modify storage hd.sct:lib ComparedItem2 set from storage hd.sct:temp InventoryCopy[-1]
## 
	function hd.sct:lib/compare.item/id/
## 
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run data modify storage hd.sct:temp SameItems append from storage hd.sct:temp InventoryCopy[-1]
## 
	data remove storage hd.sct:temp InventoryCopy[-1]
## 
	execute if data storage hd.sct:temp InventoryCopy[] run function hd.sct:sct/changed.items/shift.click/above.65/find.same.items.loop
