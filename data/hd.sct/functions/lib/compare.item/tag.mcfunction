#> hd.sct:lib/compare.item/tag
#
# tagが同じか確認
#
# @internal

## display, damageを消す
	execute if data storage hd.sct:temp ItemsCopy[-10].tag.display run data remove storage hd.sct:temp ItemsCopy[-10].tag.display
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.display run data remove storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.display
	execute if data storage hd.sct:temp ItemsCopy[-10].tag.damage run data remove storage hd.sct:temp ItemsCopy[-10].tag.damage
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.damage run data remove storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.damage
## 
	execute store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].tag set from storage hd.sct:temp ItemsCopy[-10].tag
