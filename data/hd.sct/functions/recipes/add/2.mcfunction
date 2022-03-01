#> hd.sct:recipes/add/2
#
# 必要最低限の要素があるか確認２
#
# @within function hd.sct:recipes/add/1.loop

## リストの大きさを取得
	execute store result score $HdSct.Lists HdSct.Temp if data storage hd.sct: AddRecipes[-1].Items[]
## Slot, Countがあるか確認
	execute store result score $HdSct.Elements HdSct.Temp if data storage hd.sct: AddRecipes[-1].Items[].Slot
	execute if score $HdSct.Lists HdSct.Temp = $HdSct.Elements HdSct.Temp store result score $HdSct.Elements HdSct.Temp if data storage hd.sct: AddRecipes[-1].Items[].Count
	execute if score $HdSct.Lists HdSct.Temp = $HdSct.Elements HdSct.Temp run function hd.sct:recipes/add/3
