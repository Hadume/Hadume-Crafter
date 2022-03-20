#> hd.sct:sct/add.recipe/export
#
# 
#
# @within function hd.sct:sct/add.recipe/result

## 
	data remove storage hd.sct:temp Tell.Result.Slot
## 
	data modify storage hd.sct:temp Tell.Recipes set from storage hd.sct:temp ItemsCopy
## 
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:1b}].Slot set value 6b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:2b}].Slot set value 7b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:3b}].Slot set value 8b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:10b}].Slot set value 15b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:11b}].Slot set value 16b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:12b}].Slot set value 17b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:19b}].Slot set value 24b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:20b}].Slot set value 25b
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b}] run data modify storage hd.sct:temp ItemsCopy[{Slot:21b}].Slot set value 26b
## 
	tellraw @a[tag=HdSctThis] [{"storage":"hd.sct:","nbt":"tellrawName"},{"text": "\n/data modify storage hd.sct: AddRecipes append value {Items:"},{"storage":"hd.sct:temp","nbt":"Tell.Recipes"},{"text": ",display:"},{"storage":"hd.sct:temp","nbt":"ItemsCopy"},{"text": ",Result:"},{"storage":"hd.sct:temp","nbt":"Tell.Result"},{"text": "}"}]
