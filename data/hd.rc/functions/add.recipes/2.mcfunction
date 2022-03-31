#> hd.rc:add.recipes/2
#
# 要素があるか確認２
#
# @within function hd.rc:add.recipes/1.loop

## リストの大きさを取得
	execute store result score $HdRc.List HdRc.Temp if data storage hd.rc:temp Recipe.Items[]
## Slot, Countがあるか確認
	execute store result score $HdRc.Element HdRc.Temp if data storage hd.rc:temp Recipe.Items[].Slot
	execute if score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp store result score $HdRc.Element HdRc.Temp if data storage hd.rc:temp Recipe.Items[].Count
## 次の確認
	execute if score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run function hd.rc:add.recipes/3
