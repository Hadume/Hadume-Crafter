#> hd.sct:main/crafter/remove.material/main
#
# 素材アイテムを減らす
#
# @within function
#   hd.sct:main/crafter/remove.material/check
#   hd.sct:main/crafter/shift.click/

#> ScoreHolder
# @within hd.sct:main/crafter/remove.material/*
 #declare score_holder $HdSct.Count.1
 #declare score_holder $HdSct.Count.2
## 特殊作業台内のアイテムのコピー
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:21b}]
## 
	data modify storage hd.sct:temp RecipeItemsCopy append from entity @s data.Using.Recipe.Items[]
## 素材アイテムに仮アイテムを追加する
	data modify storage hd.sct:temp Materials append from storage hd.sct: Blank[]
	data modify storage hd.sct:temp RecipeItemsCopy append from storage hd.sct: Blank[]
## 
	tag @s add HdSctThis
	execute as @e[type=minecraft:armor_stand,tag=HdSct,distance=..0.001] if score @s HdSct.ID = @e[type=minecraft:marker,tag=HdSct,distance=..0.001,limit=1] HdSct.ID run tag @s add HdSctThis
## アイテムのCountを減らす
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001] run function hd.sct:main/crafter/remove.material/as
## 仮データを消す
	execute if data storage hd.sct:temp Materials[{_:1b}] run data remove storage hd.sct:temp Materials[{_:1b}]
## 特殊作業台の中のアイテムを上書きする
	data modify block ~ ~ ~ Items append from storage hd.sct:temp Materials[]
## 個人ストレージ内の特殊作業台の中のアイテムを上書きする
	data modify storage hd.sct:temp ItemsCopy set from block ~ ~ ~ Items
## 一時使用Storageのリセット
	data remove storage hd.sct:temp Materials
	data remove storage hd.sct:temp RecipeItemsCopy
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Count.1
	scoreboard players reset $HdSct.Count.2
