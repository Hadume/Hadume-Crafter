#> hd.sct:recipes/add/3
#
# 必要最低限の要素があるか確認３
#
# @within function hd.sct:recipes/add/2

#> ScoreHolder
# @private
 #declare score_holder $HdSct.id
 #declare score_holder $HdSct.Tag
## Id or Tagがあるか確認
	execute if data storage hd.sct: AddRecipes[-1].Items[].id store result score $HdSct.id HdSct.Temp if data storage hd.sct: AddRecipes[-1].Items[].id
	execute if data storage hd.sct: AddRecipes[-1].Items[].Tag store result score $HdSct.Tag HdSct.Temp if data storage hd.sct: AddRecipes[-1].Items[].Tag
	execute store result score $HdSct.Elements HdSct.Temp run scoreboard players operation $HdSct.id HdSct.Temp += $HdSct.Tag HdSct.Temp
	execute if score $HdSct.Lists HdSct.Temp = $HdSct.Elements HdSct.Temp run function hd.sct:recipes/add/4
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.id
	scoreboard players reset $HdSct.Tag
