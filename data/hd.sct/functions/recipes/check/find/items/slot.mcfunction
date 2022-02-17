#> hd.sct:recipes/check/find/items/slot
#
# Slotが同じか確認
#
# @within function hd.sct:recipes/check/find/normal.loop

## 
	execute store success score $HdSct.Same.Recipe HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].Slot set from storage hd.sct:temp ItemsCopy[-10].Slot
## 同じだったら、id,Tagの確認
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 0 run function hd.sct:recipes/check/find/items/id/
