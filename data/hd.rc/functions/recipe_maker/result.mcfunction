#> hd.rc:recipe_maker/result
#
# 
#
# @within function hd.rc:recipe_maker/check

## 
	data modify storage hd.rc:temp Tell.Result set from storage hd.rc:temp ItemsCopy[{Slot:15b}]
	data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
## 
	execute if data storage hd.rc:temp ItemsCopy[] run function hd.rc:recipe_maker/export
