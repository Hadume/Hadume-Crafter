#> hd.rc:add.recipes/3
#
# 要素があるか確認３
#
# @within function hd.rc:add.recipes/2

#> ScoreHolder
# @private
 #declare score_holder $HdRc.id
 #declare score_holder $HdRc.Tag
## Id か Tagのどちらかがあるか確認
	execute if data storage hd.rc:temp Recipe.Items[].id store result score $HdRc.id HdRc.Temp if data storage hd.rc:temp Recipe.Items[].id
	execute if data storage hd.rc:temp Recipe.Items[].Tag store result score $HdRc.Tag HdRc.Temp if data storage hd.rc:temp Recipe.Items[].Tag
	execute store result score $HdRc.Element HdRc.Temp run scoreboard players operation $HdRc.id HdRc.Temp += $HdRc.Tag HdRc.Temp
## レシピを追加
	execute if score $HdRc.List HdRc.Temp = $HdRc.Element HdRc.Temp run function hd.rc:add.recipes/4/
## ScoreHolderを削除
	execute if score $HdRc.id HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.id
	execute if score $HdRc.Tag HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Tag
