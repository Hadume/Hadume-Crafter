#> hd.sct:sct/changed.items/recipe_book/display.materials/
#
# 
#
# @within function hd.sct:sct/changed.items/recipe_book/

## 
	item replace block ~ ~ ~ container.6 with minecraft:air
	item replace block ~ ~ ~ container.7 with minecraft:air
	item replace block ~ ~ ~ container.8 with minecraft:air
	item replace block ~ ~ ~ container.15 with minecraft:air
	item replace block ~ ~ ~ container.16 with minecraft:air
	item replace block ~ ~ ~ container.17 with minecraft:air
	item replace block ~ ~ ~ container.24 with minecraft:air
	item replace block ~ ~ ~ container.25 with minecraft:air
	item replace block ~ ~ ~ container.26 with minecraft:air
## 
	execute if data storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}] run data remove storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}].tag.HdSctRecipe[].tag.HdSct
	execute if data storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}] run data remove storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}].tag.display.Lore[-1]
	execute if data storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}] run data remove storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}].tag.HdSctSelected

	data modify storage hd.sct:temp RecipesCopy[-15].tag.HdSctRecipe[].tag.HdSct set value 1b
## Tagを消す
	data remove entity @s data.Using.RecipeBookTag
## Tagがあったら、Tagを代入
	execute if data storage hd.sct:temp RecipesCopy[-15].tag.HdSctRecipe[].Tag run function hd.sct:sct/changed.items/recipe_book/display.materials/tag/
## 
	data modify storage hd.sct:temp NewItems append from storage hd.sct:temp RecipesCopy[-15].tag.HdSctRecipe[]

	data modify storage hd.sct:temp RecipesCopy[-15].tag.display.Lore append value '{"text": "選択中", "color": "green", "italic": false}'
	data modify storage hd.sct:temp RecipesCopy[-15].tag.HdSctSelected set value 1b

	data remove storage hd.sct:temp RecipesCopy[{_:1b}]

	data modify storage hd.sct:temp NewItems append from storage hd.sct:temp RecipesCopy[]

	data modify entity @s data.Using.RecipeBook set from storage hd.sct:temp RecipesCopy

	scoreboard players set $HdSct.Items.Changed HdSct.Temp 1
