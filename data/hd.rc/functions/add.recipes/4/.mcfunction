#> hd.rc:add.recipes/4/
#
# レシピを追加
#
# @within function hd.rc:add.recipes/3

## displayをさくせい
	execute unless data storage hd.rc:temp AddRecipe.display run function hd.rc:add.recipes/4/display/
## Slotを消す
	execute if data storage hd.rc:temp AddRecipe.Options.Anywhere run data remove storage hd.rc:temp AddRecipe.Items[].Slot
## レシピを左上にずらす
	execute unless data storage hd.rc:temp AddRecipe.Options.Anywhere run function hd.rc:add.recipes/4/shift.slot
## レシピリストをずらす
	execute if score $HdRc.List HdRc.Temp matches 2.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 3.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 4.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 5.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 6.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 7.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 8.. run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
	execute if score $HdRc.List HdRc.Temp matches 9 run data modify storage hd.rc.asset:recipes _ append value [{_:1b}]
## レシピ追加
	data modify storage hd.rc.asset:recipes _[-9] prepend from storage hd.rc:temp AddRecipe
## レシピを追加できたスコアを追加
	scoreboard players add $HdRc.Succeed HdRc.Temp 1
## 仮リストを消す
	execute if score $HdRc.List HdRc.Temp matches 9 run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 8.. run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 7.. run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 6.. run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 5.. run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 4.. run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 3.. run data remove storage hd.rc.asset:recipes _[-1]
	execute if score $HdRc.List HdRc.Temp matches 2.. run data remove storage hd.rc.asset:recipes _[-1]
