#> hd.sct:lib/compare.item/slot
#
# Slotが同じか確認
#
# @internal

## 
	execute store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].Slot set from storage hd.sct:temp ItemsCopy[-10].Slot
## 同じだったら、id,Tagの確認
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run function hd.sct:lib/compare.item/count
