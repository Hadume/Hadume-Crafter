#> hd.sct:recipes/add/2
#
# 必要最低限の要素があるか確認２
#
# @within function hd.sct:recipes/add/1.loop

## リストの大きさを取得
	execute store result score $HdSct.Lists HdSct.Temp if data storage hd.sct: AddRecipes[-1].display[]
## Slot, Countがあるか確認
	execute store result score $HdSct.Elements HdSct.Temp if data storage hd.sct: AddRecipes[-1].display[].Slot
	execute if score $HdSct.Lists HdSct.Temp = $HdSct.Elements HdSct.Temp store result score $HdSct.Elements HdSct.Temp if data storage hd.sct: AddRecipes[-1].display[].Count
	execute if score $HdSct.Lists HdSct.Temp = $HdSct.Elements HdSct.Temp run function hd.sct:recipes/add/3
