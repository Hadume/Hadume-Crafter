#> hd.sct:sct/changed.items/shift.click/as
#
# 
#
# @within function hd.sct:sct/changed.items/shift.click/

## 
	data modify entity @s HandItems[0] set from entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result
## 
	execute unless predicate hd.sct:stack/1 unless predicate hd.sct:stack/16 store result score $HdSct.Count.Max.1 HdSct.Temp run scoreboard players set $HdSct.Count.Max HdSct.Temp 64
	execute if predicate hd.sct:stack/1 store result score $HdSct.Count.Max.1 HdSct.Temp run scoreboard players set $HdSct.Count.Max HdSct.Temp 1
	execute if predicate hd.sct:stack/16 store result score $HdSct.Count.Max.1 HdSct.Temp run scoreboard players set $HdSct.Count.Max HdSct.Temp 16
## 
	tag @s remove HdSctThis
