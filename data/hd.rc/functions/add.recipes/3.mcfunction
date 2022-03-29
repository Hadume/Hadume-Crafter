#> hd.rc:add.recipes/3
#
# 必要最低限の要素があるか確認３
#
# @within function hd.rc:add.recipes/2

#> ScoreHolder
# @private
 #declare score_holder $HdRc.id
 #declare score_holder $HdRc.Tag
## Id or Tagがあるか確認
	execute if data storage hd.rc:temp AddRecipe.Items[].id store result score $HdRc.id HdRc.Temp if data storage hd.rc:temp AddRecipe.Items[].id
	execute if data storage hd.rc:temp AddRecipe.Items[].Tag store result score $HdRc.Tag HdRc.Temp if data storage hd.rc:temp AddRecipe.Items[].Tag
	execute store result score $HdRc.Element HdRc.Temp run scoreboard players operation $HdRc.id HdRc.Temp += $HdRc.Tag HdRc.Temp
	execute if score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run function hd.rc:add.recipes/4/
## 一時使用ScoreHolderをリセット
	execute if score $HdRc.id HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.id
	execute if score $HdRc.Tag HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Tag
