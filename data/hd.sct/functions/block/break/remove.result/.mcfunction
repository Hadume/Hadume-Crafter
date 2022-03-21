#> hd.sct:block/break/remove.result/
#
# 
#
# @within function hd.sct:block/break/

#> Tags
# @within function hd.sct:block/break/remove.result/*
 #declare tag HdSctChecking
 #declare tag HdSctSameItem
## 
	data modify storage hd.sct:lib ComparedItem1 set from entity @s data.Using.Recipe.Result
## 
	data modify storage hd.sct:lib SameCount set value 1b
## 
	execute as @e[type=minecraft:item,predicate=hd.sct:age,distance=..1] run tag @s add HdSctChecking
## 
	execute as @e[type=minecraft:item,tag=HdSctChecking,distance=..1,sort=nearest,limit=1] run function hd.sct:block/break/remove.result/loop
## 
	execute as @e[type=minecraft:item,tag=HdSctChecking,distance=..1] run tag @s remove HdSctChecking
## 
	function hd.sct:lib/compare.item/reset
