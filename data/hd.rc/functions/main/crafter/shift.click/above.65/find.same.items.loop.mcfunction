#> hd.rc:main/crafter/shift.click/above.65/find.same.items.loop
#
# 
#
# @within function hd.rc:main/crafter/shift.click/above.65/
# @private

## 
	data modify storage hd.rc:lib ComparedItem2 set from storage hd.rc:temp InventoryCopy[-1]
## 
	function hd.rc:lib/compare.item/id/
## 
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run data modify storage hd.rc:temp SameItems append from storage hd.rc:temp InventoryCopy[-1]
## 
	data remove storage hd.rc:temp InventoryCopy[-1]
## 
	execute if data storage hd.rc:temp InventoryCopy[] run function hd.rc:main/crafter/shift.click/above.65/find.same.items.loop
