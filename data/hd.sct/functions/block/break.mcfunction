#> hd.sct:block/break
#
# 特殊作業台を破壊する
#
# @within function hd.sct:sct/tick

## 個人ストレージを呼ぶ
	tag @s add HdSctThis
	execute as @e[type=minecraft:marker,tag=HdSctStorage,distance=..0.001] if score @s HdSct.ID = @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## その場に召喚する
	execute if data entity @e[predicate=hd.sct:storage,limit=1] {data:{ItemFrame:1b}} if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}},Age:0s},distance=..1] run loot spawn ~ ~ ~ loot hd.sct:sct.item_frame
	execute if data entity @e[predicate=hd.sct:storage,limit=1] {data:{ItemFrame:0b}} if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}},Age:0s},distance=..1] run loot spawn ~ ~ ~ loot hd.sct:sct.glow_item_frame
## 樽のtagを消す
	execute as @e[type=minecraft:item,distance=..1] if data entity @s {Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}}} if data entity @s Item.tag.display.Name run data remove entity @s Item.tag
## データを消す
	kill @e[type=minecraft:marker,predicate=hd.sct:storage]
## SCTを消す
	kill @s
