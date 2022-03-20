#> hd.sct:main/ui/sct
#
# 
#
# @within function hd.sct:main/ui/

## 
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.9 loot hd.sct:gui/recipe_book
	execute unless data entity @s data.Using.Recipe unless data storage hd.sct:temp ItemsCopy[{Slot:15b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:17b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.17 loot hd.sct:gui/air
