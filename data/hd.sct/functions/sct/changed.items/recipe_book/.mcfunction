#> hd.sct:sct/changed.items/recipe_book/
#
# 
#
# @within function hd.sct:sct/changed.items/

## SCTの中身をコピー
	data modify storage hd.sct:temp RecipesCopy append from entity @s data.Using.RecipeBook[]
## 
	execute if data storage hd.sct:temp ItemsCopy[{Slot:0b,tag:{HdSct:{}}}] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-16] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-17] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-18] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:4b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-19] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-20] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-21] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-22] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-23] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:13b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-24] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:18b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-25] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-26] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-27] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-28] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
	execute if data storage hd.sct:temp ItemsCopy[{Slot:22b,tag:{HdSct:{}}}] if data storage hd.sct:temp RecipesCopy[-29] run data modify storage hd.sct:temp RecipesCopy append value {_:1b}
## 
	execute if data storage hd.sct:temp RecipesCopy[-15].tag.HdSct.Recipe run function hd.sct:sct/changed.items/recipe_book/display.materials/
## 
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:5b,tag:{HdSct:{}}}] run function hd.sct:sct/changed.items/recipe_book/change.page/prev
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:23b,tag:{HdSct:{}}}] run function hd.sct:sct/changed.items/recipe_book/change.page/next/
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:14b,tag:{HdSct:{}}}] run function hd.sct:sct/changed.items/recipe_book/change.page/return
## 
	execute if data storage hd.sct:temp ItemsCopy[] run data modify storage hd.sct:temp NewItems append from entity @s data.Using.RecipeBook[]
	execute if data storage hd.sct:temp ItemsCopy[] if data storage hd.sct:temp RecipesCopy[].tag.HdSct.Recipe.Selected run data modify storage hd.sct:temp NewItems append from storage hd.sct:temp RecipesCopy[{tag:{HdSct:{Recipe:{Selected:1b}}}}].tag.HdSct.Recipe.Items[]
## 
	data modify block ~ ~ ~ Items append from storage hd.sct:temp NewItems[]
## 
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:{}}}]
	execute if data storage hd.sct:temp ItemsCopy[] run function hd.sct:sct/changed.items/recipe_book/return.items
## 
	data remove storage hd.sct:temp RecipesCopy
	data remove storage hd.sct:temp NewItems
