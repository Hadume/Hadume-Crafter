#> hd.rc:block/break/
#
# ラクラクラフターを破壊
#
# @within function hd.rc:main/

## 樽のtagを消す
	execute as @e[type=minecraft:item,predicate=hd.rc:age,distance=..1] if data entity @s {Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}}} if data entity @s Item.tag.display.Name run data remove entity @s Item.tag
## ASを消す
	tag @s add HdRcThis
	execute as @e[type=minecraft:armor_stand,tag=HdRc,distance=..0.001] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdRc,distance=..0.001,limit=1] HdRc.ID run kill @s
	tag @s remove HdRcThis
## UIのアイテムを消す
	execute as @e[type=minecraft:item] if data entity @s Item.tag.HdRc run kill @s
## 額縁と作業台を返す
	execute if entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:barrel",Count:1b,tag:{display:{}}}},predicate=hd.rc:age,distance=..1] run loot spawn ~ ~ ~ loot hd.rc:item
## 完成アイテムを消す
	execute if data entity @s data.Using.Recipe run function hd.rc:block/break/remove.result/
## データを消す
	kill @s
