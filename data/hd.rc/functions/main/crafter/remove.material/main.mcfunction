#> hd.rc:main/crafter/remove.material/main
#
# 素材アイテムを減らす
#
# @within function
#   hd.rc:main/crafter/remove.material/check
#   hd.rc:main/crafter/shift.click/

#> ScoreHolder
# @within hd.rc:main/crafter/remove.material/*
 #declare score_holder $HdRc.Count.1
 #declare score_holder $HdRc.Count.2
## 特殊作業台内のアイテムのコピー
	execute if data storage hd.rc:temp ItemsCopy[{Slot:1b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:2b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:3b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:10b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:11b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:12b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:19b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:20b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:21b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:21b}]
## 
	data modify storage hd.rc:temp RecipeItemsCopy append from entity @s data.Using.Recipe.Items[]
## 素材アイテムに仮アイテムを追加する
	data modify storage hd.rc:temp Materials append from storage hd.rc: Blank[]
	data modify storage hd.rc:temp RecipeItemsCopy append from storage hd.rc: Blank[]
## 
	tag @s add HdSctThis
	execute as @e[type=minecraft:armor_stand,tag=HdRc,distance=..0.001] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdRc,distance=..0.001,limit=1] HdRc.ID run tag @s add HdSctThis
## アイテムのCountを減らす
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001] run function hd.rc:main/crafter/remove.material/as
## 仮データを消す
	execute if data storage hd.rc:temp Materials[{_:1b}] run data remove storage hd.rc:temp Materials[{_:1b}]
## 特殊作業台の中のアイテムを上書きする
	data modify block ~ ~ ~ Items append from storage hd.rc:temp Materials[]
## 個人ストレージ内の特殊作業台の中のアイテムを上書きする
	data modify storage hd.rc:temp ItemsCopy set from block ~ ~ ~ Items
## 一時使用Storageのリセット
	data remove storage hd.rc:temp Materials
	data remove storage hd.rc:temp RecipeItemsCopy
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdRc.Count.1
	scoreboard players reset $HdRc.Count.2
