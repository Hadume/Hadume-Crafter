#> hd.sct:sct/changed.items/recipe_book/
#
# 
#
# @within function hd.sct:sct/changed.items/

#> 
# @private
# @within function hd.sct:sct/changed.items/recipe_book/display.materials
 #declare score_holder $HdSct.Items.Changed
## SCTの中身をコピー
	data modify storage hd.sct:temp RecipesCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.RecipeBook
## 
	execute if data storage hd.sct:temp ItemsCopy[{Slot:0b,tag:{HdSct:1b}}] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-16] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-17] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-18] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:4b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-19] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-20] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-21] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-22] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-23] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:13b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-24] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:18b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-25] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-26] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-27] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-28] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:22b,tag:{HdSct:1b}}] if data storage hd.sct:temp RecipesCopy[-29] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
## 
	execute if data storage hd.sct:temp RecipesCopy[-15].tag.HdSctRecipe run function hd.sct:sct/changed.items/recipe_book/display.materials
## 
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:5b,tag:{HdSct:1b}}] run function hd.sct:sct/changed.items/recipe_book/prev
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:23b,tag:{HdSct:1b}}] run function hd.sct:sct/changed.items/recipe_book/next
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:1b}}] run tag @s remove HdSctRecipeBook
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:1b}}] run data remove storage hd.sct:temp ItemsCopy
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:1b}}] run scoreboard players reset @s HdSct.Page
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:1b}}] run scoreboard players set $HdSct.Items.Changed HdSct.Temp 1
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:1b}}] run function hd.sct:block/ui

	execute unless score $HdSct.Items.Changed HdSct.Temp matches 1 run data modify storage hd.sct:temp NewItems append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.RecipeBook[]
	execute unless score $HdSct.Items.Changed HdSct.Temp matches 1 run data modify storage hd.sct:temp NewItems append from storage hd.sct:temp RecipesCopy[{tag:{HdSctSelected:1b}}].tag.HdSctRecipe[]
## 
	data modify block ~ ~ ~ Items append from storage hd.sct:temp NewItems[]
## 
	data remove storage hd.sct:temp RecipesCopy
	data remove storage hd.sct:temp Recipe
	data remove storage hd.sct:temp NewItems

	scoreboard players reset $HdSct.Items.Changed
