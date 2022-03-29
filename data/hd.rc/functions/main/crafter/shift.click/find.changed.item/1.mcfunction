#> hd.rc:main/crafter/shift.click/find.changed.item/1
#
# 
#
# @within function hd.rc:main/crafter/shift.click/find.changed.item/loop

## 
	data modify storage hd.rc:temp InventoryStash append from storage hd.rc:temp InventoryCopy[-1]
## 
	data remove storage hd.rc:temp InventoryPast[-1]
	data remove storage hd.rc:temp InventoryCopy[-1]
## ループ
	execute if data storage hd.rc:temp InventoryPast[-1] run function hd.rc:main/crafter/shift.click/find.changed.item/loop
