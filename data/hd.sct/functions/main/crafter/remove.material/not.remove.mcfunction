#> hd.sct:main/crafter/remove.material/not.remove
#
# 
#
# @within function hd.sct:main/crafter/remove.material/loop

## 
	execute if predicate hd.sct:not.remove/in.bottle run data modify storage hd.sct:temp Materials[-10] merge value {id:"minecraft:glass_bottle",Count:1b}
	execute if predicate hd.sct:not.remove/in.bowl run data modify storage hd.sct:temp Materials[-10] merge value {id:"minecraft:bowl",Count:1b}
	execute if predicate hd.sct:not.remove/in.bucket run data modify storage hd.sct:temp Materials[-10] merge value {id:"minecraft:bucket",Count:1b}
## 
	scoreboard players set $HdSct.Count.2 HdSct.Temp 0
