#> hd.sct:block/ui/recipe_maker
#
# 
#
# @within function hd.sct:block/ui/

## 
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.9 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:17b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.17 loot hd.sct:gui/export
