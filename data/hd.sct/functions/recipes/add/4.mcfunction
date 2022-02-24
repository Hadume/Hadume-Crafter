#> hd.sct:recipes/add/4
#
# レシピを追加
#
# @within function hd.sct:recipes/add/3

## レシピをコピーする
	data modify storage hd.sct:temp RecipeItems set from storage hd.sct: AddRecipes[-1].display
## Slotを消す
	execute if data storage hd.sct: AddRecipes[-1].Options.Anywhere run data remove storage hd.sct:temp RecipeItems[].Slot
## レシピを左上にずらす
	data modify storage hd.sct:lib ShiftSlot set from storage hd.sct:temp RecipeItems
	execute unless data storage hd.sct: AddRecipes[-1].Options.Anywhere run function hd.sct:lib/shift.slot/
## レシピを返す
	data modify storage hd.sct: AddRecipes[-1].Items set from storage hd.sct:lib ShiftSlot
## レシピリストをずらす
	execute if score $HdSct.Lists HdSct.Temp matches 2.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 3.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 4.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 5.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 6.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 7.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 8.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.Lists HdSct.Temp matches 9 run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
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
## レシピ追加
	data modify storage hd.sct.asset:recipes _[-9] append from storage hd.sct: AddRecipes[-1]
## レシピを追加できたスコアを追加
	scoreboard players add $HdSct.Succeed HdSct.Temp 1
## 仮リストを消す
	execute if score $HdSct.Lists HdSct.Temp matches 9 run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 8.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 7.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 6.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 5.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 4.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 3.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.Lists HdSct.Temp matches 2.. run data remove storage hd.sct.asset:recipes _[-1]
