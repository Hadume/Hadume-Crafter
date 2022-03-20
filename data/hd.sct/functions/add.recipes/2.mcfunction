#> hd.sct:add.recipes/2
#
# 必要最低限の要素があるか確認２
#
# @within function hd.sct:add.recipes/1.loop

## リストの大きさを取得
	execute store result score $HdSct.List HdSct.Temp if data storage hd.sct:temp AddRecipe.Items[]
## Slot, Countがあるか確認
	execute store result score $HdSct.Element HdSct.Temp if data storage hd.sct:temp AddRecipe.Items[].Slot
	execute if score $HdSct.List HdSct.Temp = $HdSct.Element HdSct.Temp store result score $HdSct.Element HdSct.Temp if data storage hd.sct:temp AddRecipe.Items[].Count
	execute if score $HdSct.List HdSct.Temp = $HdSct.Element HdSct.Temp run function hd.sct:add.recipes/3
