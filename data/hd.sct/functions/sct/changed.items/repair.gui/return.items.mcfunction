#> hd.sct:sct/changed.items/repair.gui/return.items
#
# アイテムを返す
#
# @within function hd.sct:sct/changed.items/repair.gui/

#> Tags
# @private
 #declare tag HdSct.ChestMinecart
## チェスト付きトロッコを召喚
	summon minecraft:chest_minecart ~ ~ ~ {Tags:["HdSct.ChestMinecart"]}
## アイテムを入れる
	data modify entity @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0,limit=1] Items set from storage hd.sct:temp ItemsCopy
## チェスト付きトロッコを消す
	kill @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0]
