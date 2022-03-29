#> hd.rc:main/recipe_book/
#
# 
#
# @within function hd.rc:main/changed.items

## SCTの中身をコピー
	data modify storage hd.rc:temp RecipesCopy append from entity @s data.Using.RecipeBook[]
## 
	execute if data storage hd.rc:temp ItemsCopy[{Slot:0b,tag:{HdRc:{}}}] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:1b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-16] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:2b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-17] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:3b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-18] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:4b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-19] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:9b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-20] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:10b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-21] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:11b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-22] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:12b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-23] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:13b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-24] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:18b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-25] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:19b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-26] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:20b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-27] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:21b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-28] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
	execute if data storage hd.rc:temp ItemsCopy[{Slot:22b,tag:{HdRc:{}}}] if data storage hd.rc:temp RecipesCopy[-29] run data modify storage hd.rc:temp RecipesCopy append value {_:1b}
## 
	execute if data storage hd.rc:temp RecipesCopy[-15].tag.HdRc.Recipe run function hd.rc:main/recipe_book/display.materials/
## 
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:5b,tag:{HdRc:{}}}] run function hd.rc:main/recipe_book/page/change/prev
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:23b,tag:{HdRc:{}}}] run function hd.rc:main/recipe_book/page/change/next/
	execute unless data storage hd.rc:temp ItemsCopy[{Slot:14b,tag:{HdRc:{}}}] run function hd.rc:main/recipe_book/page/change/return
## 
	execute if data storage hd.rc:temp ItemsCopy[] run data modify storage hd.rc:temp NewItems append from entity @s data.Using.RecipeBook[]
	execute if data storage hd.rc:temp ItemsCopy[] if data storage hd.rc:temp RecipesCopy[].tag.HdRc.Recipe.Selected run data modify storage hd.rc:temp NewItems append from storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Items[]
## 
	data modify block ~ ~ ~ Items append from storage hd.rc:temp NewItems[]
## 
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
	execute if data storage hd.rc:temp ItemsCopy[] run function hd.rc:main/recipe_book/return.items
## 
	data remove storage hd.rc:temp RecipesCopy
	data remove storage hd.rc:temp NewItems
