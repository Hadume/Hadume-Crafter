#> hd.sct:add.recipes/3
#
# 必要最低限の要素があるか確認３
#
# @within function hd.sct:add.recipes/2

#> ScoreHolder
# @private
 #declare score_holder $HdSct.id
 #declare score_holder $HdSct.Tag
## Id or Tagがあるか確認
	execute if data storage hd.sct:temp AddRecipe.Items[].id store result score $HdSct.id HdSct.Temp if data storage hd.sct:temp AddRecipe.Items[].id
	execute if data storage hd.sct:temp AddRecipe.Items[].Tag store result score $HdSct.Tag HdSct.Temp if data storage hd.sct:temp AddRecipe.Items[].Tag
	execute store result score $HdSct.Element HdSct.Temp run scoreboard players operation $HdSct.id HdSct.Temp += $HdSct.Tag HdSct.Temp
	execute if score $HdSct.List HdSct.Temp = $HdSct.Element HdSct.Temp run function hd.sct:add.recipes/4/
## 一時使用ScoreHolderをリセット
	execute if score $HdSct.id HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.id
	execute if score $HdSct.Tag HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.Tag
