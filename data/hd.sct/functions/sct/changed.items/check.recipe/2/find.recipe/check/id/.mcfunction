#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/id/
#
# id、Tagが同じか確認
#
# @within function
#   hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/slot
#   hd.sct:sct/changed.items/check.recipe/2/find.recipe/anywhere/loop
say id確認

## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].id store success score $HdSct.Same.Recipe HdSct.Temp run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10].id set from storage hd.sct:temp ItemsCopy[-10].id
## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag unless data storage hd.sct:temp RecipesCopy[-1].Items[-10].id run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/id/tag/
## 同じだったら、Countの確認
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 0 run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/count
