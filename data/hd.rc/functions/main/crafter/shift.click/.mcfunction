#> hd.rc:main/crafter/shift.click/
#
# 完成アイテムを一括で渡す
#
# @within function hd.rc:inventory_changed

#> ScoreHolder
# @within function hd.rc:main/crafter/shift.click/***
# @within function hd.rc:main/crafter/remove.material/loop
 #declare score_holder $HdRc.Least.Number
 #declare score_holder $HdRc.Result.Count
 #declare score_holder $HdRc.Result.Count1
 #declare score_holder $HdRc.Count.Max
 #declare score_holder $HdRc.Count.Max.1
 #declare score_holder $HdRc.Count.0
 #declare score_holder $HdRc.Count.1
 #declare score_holder $HdRc.Slot
## インベントリーのコピー
	data modify storage hd.rc:temp InventoryCopy set from entity @s Inventory
	data modify storage hd.rc:temp InventoryPast set from entity @e[type=minecraft:marker,tag=HdSctThis,limit=1] data.Using.Inventory
## 増えたアイテムを特定する
	execute if data storage hd.rc:temp InventoryPast[] run function hd.rc:main/crafter/shift.click/find.changed.item/loop
## 特殊作業台内のアイテムのコピー
	data modify storage hd.rc:temp ItemsCopy set from entity @e[type=minecraft:marker,tag=HdSctThis,limit=1] data.Using.Items
	execute if data storage hd.rc:temp ItemsCopy[{Slot:1b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:2b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:3b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:10b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:11b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:12b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:19b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:20b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:21b}] run data modify storage hd.rc:temp Materials append from storage hd.rc:temp ItemsCopy[{Slot:21b}]
## レシピのアイテムをコピー
	data modify storage hd.rc:temp RecipeItems set from entity @e[type=minecraft:marker,tag=HdSctThis,limit=1] data.Using.Recipe.Items
## 
	execute as @e[type=minecraft:armor_stand,tag=HdRc,distance=..0.001] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] HdRc.ID run tag @s add HdSctThis
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis,distance=..0.001] run function hd.rc:main/crafter/shift.click/as
## 最大何回プレイヤーに完成アイテムを渡せるか確認する
	scoreboard players set $HdRc.Least.Number HdRc.Temp 2147483647
	data modify storage hd.rc:temp Materials append from storage hd.rc: Blank[]
	data modify storage hd.rc:temp RecipeItems append from storage hd.rc: Blank[]
	function hd.rc:main/crafter/shift.click/check.count.loop
	execute if data storage hd.rc:temp Materials[{_:1b}] run data remove storage hd.rc:temp Materials[{_:1b}]
	execute if data storage hd.rc:temp RecipeItems[{_:1b}] run data remove storage hd.rc:temp RecipeItems[{_:1b}]
## 完成アイテムの数を取得
	execute store result score $HdRc.Result.Count HdRc.Temp store result score $HdRc.Result.Count1 HdRc.Temp run data get entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result.Count
	execute store result score $HdRc.Count.0 HdRc.Temp run data get storage hd.rc:temp InventoryCopy[-1].Count
## 渡す完成アイテムの数を計算する
	scoreboard players operation $HdRc.Result.Count HdRc.Temp *= $HdRc.Least.Number HdRc.Temp
	scoreboard players operation $HdRc.Result.Count HdRc.Temp -= $HdRc.Result.Count1 HdRc.Temp
## 
	scoreboard players operation $HdRc.Count.Max.1 HdRc.Temp -= $HdRc.Count.0 HdRc.Temp
## 
	execute store result storage hd.rc:temp InventoryCopy[-1].Count byte 1 run scoreboard players operation $HdRc.Count.0 HdRc.Temp += $HdRc.Result.Count HdRc.Temp
## 
	execute if score $HdRc.Count.0 HdRc.Temp > $HdRc.Count.Max HdRc.Temp run function hd.rc:main/crafter/shift.click/above.65/
## アイテムを返す
	data modify storage hd.rc:lib PlaceItems append from storage hd.rc:temp InventoryCopy[-1]
	function hd.rc:lib/place.items/
## 素材アイテムを減らす
	data remove storage hd.rc:temp ItemsCopy
	execute as @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] run function hd.rc:main/crafter/remove.material/main
## 完成アイテムSlotを直す
	loot replace block ~ ~ ~ container.15 loot hd.rc:gui/air
## SCTのレシピデータを消す
	data remove entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdRc.Count.0
	scoreboard players reset $HdRc.Count.1
	scoreboard players reset $HdRc.Least.Number
	scoreboard players reset $HdRc.Result.Count
	scoreboard players reset $HdRc.Result.Count1
	scoreboard players reset $HdRc.Slot
	scoreboard players reset $HdRc.Count.Max
	scoreboard players reset $HdRc.Count.Max.1
## 一時使用Storageをリセット
	data remove storage hd.rc:temp InventoryCopy
	data remove storage hd.rc:temp InventoryPast
	data remove storage hd.rc:temp InventoryStash
	data remove storage hd.rc:temp RecipeItems
	data remove storage hd.rc:temp SameItems
