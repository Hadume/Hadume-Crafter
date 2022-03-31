#> hd.rc:recipe_maker/export
#
# レシピを出力
#
# @within function hd.rc:recipe_maker/result

## Slotを削除
	data remove storage hd.rc:temp Tell.Result.Slot
## データを移動
	data modify storage hd.rc:temp Tell.Recipes set from storage hd.rc:temp ItemsCopy
## Slotを移動
	execute if data storage hd.rc:temp ItemsCopy[{Slot:1b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:1b}].Slot set value 6b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:2b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:2b}].Slot set value 7b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:3b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:3b}].Slot set value 8b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:10b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:10b}].Slot set value 15b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:11b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:11b}].Slot set value 16b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:12b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:12b}].Slot set value 17b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:19b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:19b}].Slot set value 24b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:20b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:20b}].Slot set value 25b
	execute if data storage hd.rc:temp ItemsCopy[{Slot:21b}] run data modify storage hd.rc:temp ItemsCopy[{Slot:21b}].Slot set value 26b
## プレイヤーに伝える
	tellraw @a[tag=HdRcThis] [{"storage":"hd.rc:","nbt":"tellrawName"},{"text": "\n/data modify storage hd.rc: AddRecipes append value {Items:"},{"storage":"hd.rc:temp","nbt":"Tell.Recipes"},{"text": ",display:"},{"storage":"hd.rc:temp","nbt":"ItemsCopy"},{"text": ",Result:"},{"storage":"hd.rc:temp","nbt":"Tell.Result"},{"text": "}"}]
