#> hd.sct:recipe_maker/result
#
# 
#
# @within function hd.sct:recipe_maker/check

## 
	data modify storage hd.sct:temp Tell.Result set from storage hd.sct:temp ItemsCopy[{Slot:15b}]
	data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
## 
	execute if data storage hd.sct:temp ItemsCopy[] run function hd.sct:recipe_maker/export
