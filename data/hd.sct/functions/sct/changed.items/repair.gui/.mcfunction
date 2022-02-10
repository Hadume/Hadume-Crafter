#> hd.sct:sct/changed.items/repair.gui/
#
# GUIを直す
#
# @within function hd.sct:sct/changed.items/

## データを消す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b}] run data remove storage hd.sct:temp ItemsCopy[{Slot:21b}]
## アイテムを返す
	execute if data storage hd.sct:temp ItemsCopy[] run data modify storage hd.sct:lib ReturnItems set from storage hd.sct:temp ItemsCopy
	execute if data storage hd.sct:temp ItemsCopy[] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## もう一回チェストの中身を取得
	data modify storage hd.sct:temp ItemsCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items
## GUIを戻す
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:0b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.0 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:4b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.4 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:5b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.5 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:6b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.6 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:7b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.7 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:8b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.8 loot hd.sct:gui/air
		execute unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.9 loot hd.sct:gui/recipe_book
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:13b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.13 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.14 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:15b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:16b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.16 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:17b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.17 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:18b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.18 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:22b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.22 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:23b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:24b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.24 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:25b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.25 loot hd.sct:gui/air
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:26b,tag:{HdSct:1b}}] run loot replace block ~ ~ ~ container.26 loot hd.sct:gui/air
## SCTの中身を取得
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items set from block ~ ~ ~ Items
