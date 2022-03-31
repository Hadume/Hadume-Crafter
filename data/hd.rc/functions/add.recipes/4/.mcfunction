#> hd.rc:add.recipes/4/
#
# レシピを追加
#
# @within function hd.rc:add.recipes/3

## レシピブックでの表示を作成
	execute unless data storage hd.rc:temp Recipe.display run function hd.rc:add.recipes/4/display/
## Slotを削除
	execute if data storage hd.rc:temp Recipe.Options.Anywhere run data remove storage hd.rc:temp Recipe.Items[].Slot
## レシピを左上にずらす
	execute unless data storage hd.rc:temp Recipe.Options.Anywhere run function hd.rc:add.recipes/4/shift.slot
## レシピリストをずらす
	execute if score $HdRc.List HdRc.Temp matches 1 run data modify storage hd.rc.asset:recipes _[-9] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 2 run data modify storage hd.rc.asset:recipes _[-8] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 3 run data modify storage hd.rc.asset:recipes _[-7] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 4 run data modify storage hd.rc.asset:recipes _[-6] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 5 run data modify storage hd.rc.asset:recipes _[-5] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 6 run data modify storage hd.rc.asset:recipes _[-4] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 7 run data modify storage hd.rc.asset:recipes _[-3] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 8 run data modify storage hd.rc.asset:recipes _[-2] append from storage hd.rc:temp Recipe
	execute if score $HdRc.List HdRc.Temp matches 9 run data modify storage hd.rc.asset:recipes _[-1] append from storage hd.rc:temp Recipe
## レシピを追加できたことを記録
	scoreboard players add $HdRc.Succeed HdRc.Temp 1
