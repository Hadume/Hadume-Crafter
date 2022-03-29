#> hd.rc:main/crafter/shift.click/as
#
# 
#
# @within function hd.rc:main/crafter/shift.click/

## 
	data modify entity @s HandItems[0] set from entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result
## 
	execute unless predicate hd.rc:stack/1 unless predicate hd.rc:stack/16 store result score $HdRc.Count.Max.1 HdRc.Temp run scoreboard players set $HdRc.Count.Max HdRc.Temp 64
	execute if predicate hd.rc:stack/1 store result score $HdRc.Count.Max.1 HdRc.Temp run scoreboard players set $HdRc.Count.Max HdRc.Temp 1
	execute if predicate hd.rc:stack/16 store result score $HdRc.Count.Max.1 HdRc.Temp run scoreboard players set $HdRc.Count.Max HdRc.Temp 16
## 
	tag @s remove HdSctThis
