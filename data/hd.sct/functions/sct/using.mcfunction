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
## 個人ストレージを呼ぶ
	function #oh_my_dat:please
## SCTの中身が変ったか確認
	execute store success score $HdSct.ChangedItems HdSct.Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items set from block ~ ~ ~ Items
	execute if entity @s[tag=!HdSct.Recipe] if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/changed.items/
	execute if entity @s[tag=HdSct.Recipe] if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/add.recipe/
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.ChangedItems
