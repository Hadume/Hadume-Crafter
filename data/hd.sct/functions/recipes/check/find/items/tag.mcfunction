#> hd.sct:recipes/check/find/items/tag
#
# tagが同じか確認
#
# @within function hd.sct:recipes/check/find/items/count
say tag確認

## displayを消す
	execute if data storage hd.sct:temp ItemsCopy[-10].tag.display run data remove storage hd.sct:temp ItemsCopy[-10].tag.display
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.display run data remove storage hd.sct:temp RecipesCopy[-1].Items[-10].tag.display
## 
	execute store success score $HdSct.Same.Recipe HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].tag set from storage hd.sct:temp ItemsCopy[-10].tag
