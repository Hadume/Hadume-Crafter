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
## RCのアイテムをコピー
	execute if data storage hd.rc:temp ItemsCopy[{Slot:1b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:2b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:3b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:10b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:11b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:12b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:19b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:20b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:21b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:21b}]
## レシピアイテムをコピー
	data modify storage hd.rc:temp RecipeItemsCopy append from entity @s data.Using.Recipe.Items[]
## 仮要素を追加
	data modify storage hd.rc:temp Materials append from storage hd.rc: Blank[]
	data modify storage hd.rc:temp RecipeItemsCopy append from storage hd.rc: Blank[]
## ASを紐づける
	tag @s add HdRcThis
	execute as @e[type=minecraft:armor_stand,tag=HdRc,distance=..0.001] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdRc,distance=..0.001,limit=1] HdRc.ID run tag @s add HdRcThis
## 
	execute as @e[type=minecraft:armor_stand,tag=HdRcThis,distance=..0.001] run function hd.rc:main/crafter/remove.material/as
## 仮要素を削除
	execute if data storage hd.rc:temp Materials[{_:1b}] run data remove storage hd.rc:temp Materials[{_:1b}]
## RCのアイテムを上書き
	data modify block ~ ~ ~ Items append from storage hd.rc:temp Materials[]
	data modify storage hd.rc:temp ItemsCopy set from block ~ ~ ~ Items
## Storageを削除
	data remove storage hd.rc:temp Materials
	data remove storage hd.rc:temp RecipeItemsCopy
## ScoreHolderを削除
	scoreboard players reset $HdRc.Count.1
	scoreboard players reset $HdRc.Count.2
