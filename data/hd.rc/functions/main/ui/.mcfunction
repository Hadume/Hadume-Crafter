#> hd.rc:main/ui/
#
# SCTのUI
#
# @within function
#   hd.rc:block/set
#   hd.rc:main/recipe_book/page/change/return
#   hd.rc:main/crafter/repair.gui
#   hd.rc:block/open/sct

## 
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:0b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.0 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:4b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.4 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:5b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.5 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:6b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.6 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:7b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.7 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:8b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.8 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:13b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.13 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:14b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.14 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:16b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.16 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:18b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.18 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:22b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.22 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:23b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:24b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.24 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:25b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.25 loot hd.rc:gui/air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:26b,tag:{HdRc:{}}}] run loot replace block ~ ~ ~ container.26 loot hd.rc:gui/air
## 
	execute if entity @s[tag=!HdSctRM] run function hd.rc:main/ui/sct
	execute if entity @s[tag=HdSctRM] run function hd.rc:main/ui/recipe_maker
## 
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:1b}] run item replace block ~ ~ ~ container.1 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:2b}] run item replace block ~ ~ ~ container.2 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:3b}] run item replace block ~ ~ ~ container.3 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:10b}] run item replace block ~ ~ ~ container.10 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:11b}] run item replace block ~ ~ ~ container.11 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:12b}] run item replace block ~ ~ ~ container.12 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:19b}] run item replace block ~ ~ ~ container.19 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:20b}] run item replace block ~ ~ ~ container.20 with minecraft:air
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:21b}] run item replace block ~ ~ ~ container.21 with minecraft:air
