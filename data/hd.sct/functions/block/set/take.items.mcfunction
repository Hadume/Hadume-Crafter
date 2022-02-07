#> hd.sct:block/set/take.items
#
# 樽の中のアイテムを返す
#
# @within function hd.sct:block/set/

#> Tags
# @private
 #declare tag HdSct.ChestMinecart
## チェスト付きトロッコを召喚
	summon minecraft:chest_minecart ~ ~ ~ {Tags:["HdSct.ChestMinecart"]}
## アイテムを入れる
	data modify entity @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0,limit=1] Items append from block ~ ~-1 ~ Items[]
## チェスト付きトロッコを消す
	kill @e[type=minecraft:chest_minecart,tag=HdSct.ChestMinecart,distance=0]
