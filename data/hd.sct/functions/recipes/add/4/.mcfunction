#> hd.sct:recipes/add/4/
#
# レシピを追加
#
# @within function hd.sct:recipes/add/3

## displayをさくせい
	execute unless data storage hd.sct:temp AddRecipe.display run function hd.sct:recipes/add/4/display/
## Slotを消す
	execute if data storage hd.sct:temp AddRecipe.Options.Anywhere run data remove storage hd.sct:temp AddRecipe.Items[].Slot
## レシピを左上にずらす
	execute unless data storage hd.sct:temp AddRecipe.Options.Anywhere run function hd.sct:recipes/add/4/shift.slot
## レシピリストをずらす
	execute if score $HdSct.List HdSct.Temp matches 2.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 3.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 4.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 5.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 6.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 7.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 8.. run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
	execute if score $HdSct.List HdSct.Temp matches 9 run data modify storage hd.sct.asset:recipes _ append value [{_:1b}]
## レシピ追加
	data modify storage hd.sct.asset:recipes _[-9] prepend from storage hd.sct:temp AddRecipe
## レシピを追加できたスコアを追加
	scoreboard players add $HdSct.Succeed HdSct.Temp 1
## 仮リストを消す
	execute if score $HdSct.List HdSct.Temp matches 9 run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 8.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 7.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 6.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 5.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 4.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 3.. run data remove storage hd.sct.asset:recipes _[-1]
	execute if score $HdSct.List HdSct.Temp matches 2.. run data remove storage hd.sct.asset:recipes _[-1]
