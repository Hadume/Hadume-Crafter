#> hd.rc:add.recipes/1.loop
#
# 必要最低限の要素があるか確認１
#
# @within function hd.rc:add.recipes/
# @private

## レシピをコピー
	data modify storage hd.rc:temp AddRecipe set from storage hd.rc: AddRecipes[-1]
## リストの大きさを取得
	execute if data storage hd.rc:temp AddRecipe.Items[] if data storage hd.rc:temp AddRecipe.Result.id if data storage hd.rc:temp AddRecipe.Result.Count run function hd.rc:add.recipes/2
## レシピが追加出来なかったら
	execute unless score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run scoreboard players add $HdRc.Fail HdRc.Temp 1
	execute unless score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run data modify storage hd.rc: FailRecipes append from storage hd.rc:temp AddRecipe
## データを消す
	data remove storage hd.rc: AddRecipes[-1]
## データがまだあったらループ
	execute if data storage hd.rc: AddRecipes[] run function hd.rc:add.recipes/1.loop
