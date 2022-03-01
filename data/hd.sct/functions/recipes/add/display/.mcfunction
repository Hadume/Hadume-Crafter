#> hd.sct:recipes/add/display/
#
# displayを作成
#
# @within function hd.sct:recipes/add/4

## 
	data modify storage hd.sct: AddRecipes[-1].display set from storage hd.sct: AddRecipes[-1].Items
## displayのSlotを調整
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:1b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:1b}].Slot set value 6b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:2b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:2b}].Slot set value 7b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:3b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:3b}].Slot set value 8b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:10b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:10b}].Slot set value 15b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:11b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:11b}].Slot set value 16b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:12b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:12b}].Slot set value 17b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:19b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:19b}].Slot set value 24b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:20b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:20b}].Slot set value 25b
	execute if data storage hd.sct: AddRecipes[-1].display[{Slot:21b}] run data modify storage hd.sct: AddRecipes[-1].display[{Slot:21b}].Slot set value 26b
## displayを調整(縦２、縦３どちらでも使えるようにSlot:24bは確認してない)
	execute unless data storage hd.sct: AddRecipes[-1].Options.Anywhere if data storage hd.sct: AddRecipes[-1].display[{Slot:6b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:7b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:8b}] if data storage hd.sct: AddRecipes[-1].display[{Slot:15b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:16b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:17b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:25b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:26b}] run function hd.sct:recipes/add/display/center.vert
## (横２、横３どちらでも使えるようにSlot:8bは確認してない)
	execute unless data storage hd.sct: AddRecipes[-1].Options.Anywhere if data storage hd.sct: AddRecipes[-1].display[{Slot:6b}] if data storage hd.sct: AddRecipes[-1].display[{Slot:7b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:15b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:16b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:17b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:24b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:25b}] unless data storage hd.sct: AddRecipes[-1].display[{Slot:26b}] run function hd.sct:recipes/add/display/center.hor
