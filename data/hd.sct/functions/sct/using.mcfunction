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
	tag @s add HdSctThis
	execute as @e[type=minecraft:marker,tag=HdSctStorage,distance=..0.001] if score @s HdSct.ID = @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001,limit=1] HdSct.ID run tag @s add HdSctThis
	tag @s remove HdSctThis
## SCTの中身が変ったか確認
	execute store success score $HdSct.ChangedItems HdSct.Temp run data modify entity @e[predicate=hd.sct:storage,limit=1] data.Using.Items set from block ~ ~ ~ Items
	execute if entity @s[tag=!HdSct.Recipe] if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/changed.items/
	execute if entity @s[tag=HdSct.Recipe] if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/add.recipe/
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.ChangedItems
## 
	tag @e[predicate=hd.sct:storage] remove HdSctThis
