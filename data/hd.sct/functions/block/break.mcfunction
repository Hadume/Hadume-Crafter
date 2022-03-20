#> hd.sct:block/break
#
# 特殊作業台を破壊する
#
# @within function hd.sct:sct/tick

## 
	tag @s add HdSctThis
	execute as @e[type=minecraft:armor_stand,tag=HdSct,distance=..0.001] if score @s HdSct.ID = @e[type=minecraft:marker,tag=HdSct,distance=..0.001,limit=1] HdSct.ID run kill @s
	tag @s remove HdSctThis
## その場に召喚する
	execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}},Age:0s},distance=..1] run loot spawn ~ ~ ~ loot hd.sct:item
## 樽のtagを消す
	execute as @e[type=minecraft:item,distance=..1] if data entity @s {Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}},Age:0s} if data entity @s Item.tag.display.Name run data remove entity @s Item.tag
## データを消す
	kill @s
