#> hd.rc:add.recipes/4/shift.slot
#
# 
#
# @within function hd.rc:add.recipes/4/

## レシピを左上にずらす
	data modify storage hd.rc:lib ShiftSlot set from storage hd.rc:temp AddRecipe.Items
	function hd.rc:lib/shift.slot/
## レシピを返す
	data modify storage hd.rc:temp AddRecipe.Items set from storage hd.rc:lib ShiftSlot
