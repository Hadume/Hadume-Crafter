#> hd.rc:main/crafter/remove.material/not.remove
#
# 
#
# @within function hd.rc:main/crafter/remove.material/loop

## 
	execute if predicate hd.rc:not.remove/in.bottle run data modify storage hd.rc:temp Materials[-10] merge value {id:"minecraft:glass_bottle",Count:1b}
	execute if predicate hd.rc:not.remove/in.bowl run data modify storage hd.rc:temp Materials[-10] merge value {id:"minecraft:bowl",Count:1b}
	execute if predicate hd.rc:not.remove/in.bucket run data modify storage hd.rc:temp Materials[-10] merge value {id:"minecraft:bucket",Count:1b}
## 
	scoreboard players set $HdRc.Count.2 HdRc.Temp 0
