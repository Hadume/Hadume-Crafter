#> hd.rc:main/ui/sct
#
# RC
#
# @within function hd.rc:main/ui/

## 
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:9b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.9 loot hd.rc:gui/recipe_book
	execute unless data entity @s data.Using.Recipe unless data storage hd.rc:temp ItemsCopy[{Slot:15b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.15 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:17b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.17 loot hd.rc:gui/air
