#> hd.rc:add.recipes/4/shift.slot
#
# レシピを左上にずらす
#
# @within function hd.rc:add.recipes/4/

## 
	data modify storage hd.rc:lib ShiftSlot set from storage hd.rc:temp AddRecipe.Items
	function hd.rc:lib/shift.slot/
## レシピを戻す
	data modify storage hd.rc:temp AddRecipe.Items set from storage hd.rc:lib ShiftSlot
