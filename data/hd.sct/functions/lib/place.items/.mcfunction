#> hd.sct:lib/place.items/
#
# アイテムをプレイヤーのインベントリーに入れる
#
# @input
#   score_holder $HdSct.lib.Slot
#   storage hd.sct:lib PlaceItems
# @within function hd.sct:***

#> ScoreHolder
# @within function hd.sct:**
 #declare score_holder $HdSct.lib.Slot
#> Tags
# @within function hd.sct:lib/place.items/*
 #declare tag HdSctAS
## インベントリーをコピー
	data modify storage hd.sct:lib InventoryCopy set from entity @s Inventory
## Slotを代入
	function hd.sct:lib/place.items/get.slot.loop
## ASを召喚
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdSctAS"]}
## アイテムをプレイヤーのインベントリーに入れる
	function hd.sct:lib/place.items/loop
## ASを消す
	kill @e[type=minecraft:armor_stand,tag=HdSctAS,distance=0]
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.lib.Slot
## 一時使用Storageをリセット
	data remove storage hd.sct:lib InventoryCopy
	data remove storage hd.sct:lib PlaceItems
	data remove storage hd.sct:lib PlaceItems1
