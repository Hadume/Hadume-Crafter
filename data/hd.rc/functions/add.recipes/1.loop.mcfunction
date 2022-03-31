#> hd.rc:add.recipes/1.loop
#
# 要素があるか確認１
#
# @within function hd.rc:add.recipes/
# @private

## レシピをコピー
	data modify storage hd.rc:temp Recipe set from storage hd.rc: AddRecipes[-1]
## 
	execute if data storage hd.rc:temp Recipe.Items[] if data storage hd.rc:temp Recipe.Result.id if data storage hd.rc:temp Recipe.Result.Count run function hd.rc:add.recipes/2
## レシピを追加出来なかったら
	execute unless score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run scoreboard players add $HdRc.Fail HdRc.Temp 1
	execute unless score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run data modify storage hd.rc: FailedRecipes append from storage hd.rc:temp Recipe
## データを削除
	data remove storage hd.rc: AddRecipes[-1]
## ループ
	execute if data storage hd.rc: AddRecipes[] run function hd.rc:add.recipes/1.loop
