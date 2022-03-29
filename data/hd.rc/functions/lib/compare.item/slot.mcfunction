#> hd.rc:lib/compare.item/slot
#
# Slotが同じか確認
#
# @internal

## 
	execute store success score $HdRc.lib.Different HdRc.Temp run data modify storage hd.rc:lib ComparedItem2.Slot set from storage hd.rc:lib ComparedItem1.Slot
## 同じだったら、id,Tagの確認
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run function hd.rc:lib/compare.item/count
