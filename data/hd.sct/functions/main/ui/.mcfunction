#> hd.sct:main/ui/
#
# SCTのUI
#
# @within function
#   hd.sct:block/set
#   hd.sct:main/recipe_book/change.page/return
#   hd.sct:main/crafter/repair.gui
#   hd.sct:block/open/sct

## 
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:0b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.0 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:4b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.4 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:5b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.5 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:6b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.6 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:7b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.7 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:8b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.8 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:13b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.13 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.14 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:16b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.16 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:18b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.18 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:22b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.22 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:23b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:24b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.24 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:25b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.25 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:26b,tag:{HdSct:{}}}] run loot replace block ~ ~ ~ container.26 loot hd.sct:gui/air
## 
	execute if entity @s[tag=!HdSctRM] run function hd.sct:main/ui/sct
	execute if entity @s[tag=HdSctRM] run function hd.sct:main/ui/recipe_maker
## 
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:1b}] run item replace block ~ ~ ~ container.1 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:2b}] run item replace block ~ ~ ~ container.2 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:3b}] run item replace block ~ ~ ~ container.3 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:10b}] run item replace block ~ ~ ~ container.10 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:11b}] run item replace block ~ ~ ~ container.11 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:12b}] run item replace block ~ ~ ~ container.12 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:19b}] run item replace block ~ ~ ~ container.19 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:20b}] run item replace block ~ ~ ~ container.20 with minecraft:air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:21b}] run item replace block ~ ~ ~ container.21 with minecraft:air
