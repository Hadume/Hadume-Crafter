#> hd.rc:lib/return.items/
#
# アイテムを返す
#
# @input
#   storage hd.rc:lib ReturnItems
# @within function hd.rc:***

#> Tags
# @private
 #declare tag HdRc.ChestMinecart
## チェスト付きトロッコを召喚
	summon minecraft:chest_minecart ~ ~ ~ {Tags:["HdRc.ChestMinecart"]}
## アイテムを挿入
	data modify entity @e[type=minecraft:chest_minecart,tag=HdRc.ChestMinecart,distance=0,limit=1] Items append from storage hd.rc:lib ReturnItems[]
## チェスト付きトロッコを消す
	kill @e[type=minecraft:chest_minecart,tag=HdRc.ChestMinecart,distance=0]
## Storageを削除
	data remove storage hd.rc:lib ReturnItems
