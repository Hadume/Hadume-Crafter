#> hd.rc:main/recipe_book/return.items
#
# 
#
# @within function hd.rc:main/recipe_book/

## 
	data modify storage hd.rc:lib ReturnItems set from storage hd.rc:temp ItemsCopy
	execute positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## 
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:6b}] run item replace block ~ ~ ~ container.6 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:7b}] run item replace block ~ ~ ~ container.7 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:8b}] run item replace block ~ ~ ~ container.8 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:15b}] run item replace block ~ ~ ~ container.15 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:16b}] run item replace block ~ ~ ~ container.16 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:17b}] run item replace block ~ ~ ~ container.17 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:24b}] run item replace block ~ ~ ~ container.24 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:25b}] run item replace block ~ ~ ~ container.25 with minecraft:air
	execute unless data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[{Slot:26b}] run item replace block ~ ~ ~ container.26 with minecraft:air
