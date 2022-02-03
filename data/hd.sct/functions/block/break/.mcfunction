#> hd.sct:block/break/
#
# 特殊作業台を破壊する
#
# @within function hd.sct:tick

## 個人ストレージを呼ぶ
	function #oh_my_dat:please
## その場に召喚する
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct{ItemFrame:1b} if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}},Age:0s},distance=..1] run loot spawn ~ ~ ~ loot hd.sct:sct.item_frame
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct{ItemFrame:0b} if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}},Age:0s},distance=..1] run loot spawn ~ ~ ~ loot hd.sct:sct.glow_item_frame
## 樽のtagを消す
	execute as @e[type=minecraft:item,distance=..1] if data entity @s {Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}}} if data entity @s Item.tag.display.Name run data remove entity @s Item.tag
## データを消す
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct
## SCTを消す
	kill @s
