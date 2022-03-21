#> hd.sct:block/break/remove.result/loop
#
# 
#
# @within function hd.sct:block/break/remove.result/
# @private

## 
	data modify storage hd.sct:lib ComparedItem2 set from entity @s Item
## 
	function hd.sct:lib/compare.item/count
## 
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run kill @s
## 
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run tag @s remove HdSctChecking
## 
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 as @e[type=minecraft:item,tag=HdSctChecking,distance=..1,sort=nearest,limit=1] run function hd.sct:block/break/remove.result/loop
