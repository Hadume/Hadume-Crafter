#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/tag
#
# tagが同じか確認
#
# @within function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/count
say tag確認

## displayを消す
	execute if data storage hd.sct:temp ItemsCopy[-10].tag.display run data remove storage hd.sct:temp ItemsCopy[-10].tag.display
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.display run data remove storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.display
## 
	execute store success score $HdSct.Same.Recipe HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].tag set from storage hd.sct:temp ItemsCopy[-10].tag
