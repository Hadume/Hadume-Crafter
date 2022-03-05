#> hd.sct:lib/compare.item/id/
#
# id、Tagが同じか確認
#
# @internal

## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].id store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].id set from storage hd.sct:temp ItemsCopy[-10].id
## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].Tag unless data storage hd.sct:temp RecipesCopy[-1].Items[-10].id run function hd.sct:lib/compare.item/id/tag/
## tagの確認
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:temp ItemsCopy[-10].tag run function hd.sct:lib/compare.item/tag
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag unless data storage hd.sct:temp ItemsCopy[-10].tag run function hd.sct:lib/compare.item/tag
