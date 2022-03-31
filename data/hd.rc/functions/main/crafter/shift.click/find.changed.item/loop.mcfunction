#> hd.rc:main/crafter/shift.click/find.changed.item/loop
#
# 増えたアイテムを特定
#
# @within function
#   hd.rc:main/crafter/shift.click/
#   hd.rc:main/crafter/shift.click/find.changed.item/1

#> ScoreHolder
# @within function
#   hd.rc:main/crafter/shift.click/
#   hd.rc:main/crafter/shift.click/find.changed.item/*
 #declare score_holder $HdRc.Compared
## アイテムを重ねる
	execute store success score $HdRc.Compared HdRc.Temp run data modify storage hd.rc:temp InventoryPast[-1] set from storage hd.rc:temp InventoryCopy[-1]
## 違ったら、データを削除
	execute if score $HdRc.Compared HdRc.Temp matches 0 run function hd.rc:main/crafter/shift.click/find.changed.item/1
