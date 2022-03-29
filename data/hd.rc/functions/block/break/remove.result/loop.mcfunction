#> hd.rc:block/break/remove.result/loop
#
# 
#
# @within function hd.rc:block/break/remove.result/
# @private

## 
	data modify storage hd.rc:lib ComparedItem2 set from entity @s Item
## 
	function hd.rc:lib/compare.item/count
## 
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run kill @s
## 
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run tag @s remove HdSctChecking
## 
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 as @e[type=minecraft:item,tag=HdSctChecking,distance=..1,sort=nearest,limit=1] run function hd.rc:block/break/remove.result/loop
