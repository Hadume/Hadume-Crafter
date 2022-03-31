#> hd.rc:main/crafter/remove.material/not.remove
#
# アイテムを減らさない
#
# @within function hd.rc:main/crafter/remove.material/loop

## アイテムを変更
	execute if predicate hd.rc:not.remove/in.bottle run data modify storage hd.rc:temp Materials[-10] merge value {id:"minecraft:glass_bottle",Count:1b}
	execute if predicate hd.rc:not.remove/in.bowl run data modify storage hd.rc:temp Materials[-10] merge value {id:"minecraft:bowl",Count:1b}
	execute if predicate hd.rc:not.remove/in.bucket run data modify storage hd.rc:temp Materials[-10] merge value {id:"minecraft:bucket",Count:1b}
## Countを調整
	scoreboard players set $HdRc.Count.2 HdRc.Temp 0
