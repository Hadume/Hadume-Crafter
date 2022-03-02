#> hd.sct:sct/using
#
# 使っていたら
#
# @within function hd.sct:sct/tick

#> Tags
# @private
 #declare tag HdSct.Recipe
#> ScoreHolder
# @private
 #declare score_holder $HdSct.ChangedItems
## SCTの中身が変ったか確認
	execute store success score $HdSct.ChangedItems HdSct.Temp run data modify entity @s data.Using.Items set from block ~ ~ ~ Items
	execute if entity @s[tag=!HdSct.Recipe] if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/changed.items/
	execute if entity @s[tag=HdSct.Recipe] if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/add.recipe/
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.ChangedItems
