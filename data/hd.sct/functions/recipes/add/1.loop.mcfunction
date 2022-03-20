#> hd.sct:recipes/add/1.loop
#
# 必要最低限の要素があるか確認１
#
# @within function hd.sct:recipes/add/
# @private

## レシピをコピー
	data modify storage hd.sct:temp AddRecipe set from storage hd.sct: AddRecipes[-1]
## リストの大きさを取得
	execute if data storage hd.sct:temp AddRecipe.Items[] if data storage hd.sct:temp AddRecipe.Result.id if data storage hd.sct:temp AddRecipe.Result.Count run function hd.sct:recipes/add/2
## レシピが追加出来なかったら
	execute unless score $HdSct.List HdSct.Temp = $HdSct.Element HdSct.Temp run scoreboard players add $HdSct.Fail HdSct.Temp 1
	execute unless score $HdSct.List HdSct.Temp = $HdSct.Element HdSct.Temp run data modify storage hd.sct: FailRecipes append from storage hd.sct:temp AddRecipe
## データを消す
	data remove storage hd.sct: AddRecipes[-1]
## データがまだあったらループ
	execute if data storage hd.sct: AddRecipes[] run function hd.sct:recipes/add/1.loop
