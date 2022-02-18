#> hd.sct:lib/return.items/
#
# アイテムを返す
#
# @input
#   storage hd.sct:lib ReturnItems
# @within function hd.sct:***

#> Tags
# @private
 #declare tag HdSct.ChestMinecart
## チェスト付きトロッコを召喚
	summon minecraft:chest_minecart ~ ~ ~ {Tags:["HdSct.ChestMinecart"]}
## アイテムを入れる
	data modify entity @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0,limit=1] Items set from storage hd.sct:lib ReturnItems
## チェスト付きトロッコを消す
	kill @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0]
## 一時使用Storageをリセット
	data remove storage hd.sct:lib ReturnItems
