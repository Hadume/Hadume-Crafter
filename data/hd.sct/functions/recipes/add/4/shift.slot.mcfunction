#> hd.sct:recipes/add/4/shift.slot
#
# 
#
# @within function hd.sct:recipes/add/4/

## レシピを左上にずらす
	data modify storage hd.sct:lib ShiftSlot set from storage hd.sct:temp AddRecipe.Items
	function hd.sct:lib/shift.slot/
## レシピを返す
	data modify storage hd.sct:temp AddRecipe.Items set from storage hd.sct:lib ShiftSlot
