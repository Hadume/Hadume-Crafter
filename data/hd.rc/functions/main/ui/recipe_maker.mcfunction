#> hd.rc:main/ui/recipe_maker
#
# RM
#
# @within function hd.rc:main/ui/

## 
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:9b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.9 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:17b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.17 loot hd.rc:gui/export
