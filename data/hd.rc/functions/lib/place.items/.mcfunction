#> hd.rc:lib/place.items/
#
# インベントリーにアイテムを挿入
#
# @input
#   score_holder $HdRc.lib.Slot
#   storage hd.rc:lib PlaceItems
# @within function hd.rc:***

#> ScoreHolder
# @within function hd.rc:**
 #declare score_holder $HdRc.lib.Slot
#> Tags
# @within function hd.rc:lib/place.items/*
 #declare tag HdRcAS
## インベントリーをコピー
	data modify storage hd.rc:lib InventoryCopy set from entity @s Inventory
## Slotを代入
	function hd.rc:lib/place.items/get.slot.loop
## ASを召喚
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdRcAS"]}
## 
	function hd.rc:lib/place.items/loop
## ASを消す
	kill @e[type=minecraft:armor_stand,tag=HdRcAS,distance=0]
## ScoreHolderを削除
	scoreboard players reset $HdRc.lib.Slot
## Storageを削除
	data remove storage hd.rc:lib InventoryCopy
	data remove storage hd.rc:lib PlaceItems
	data remove storage hd.rc:lib PlaceItems1
