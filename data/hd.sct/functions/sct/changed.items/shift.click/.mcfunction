#> hd.sct:sct/changed.items/shift.click/
#
# 完成アイテムを一括で渡す
#
# @within function hd.sct:sct/inventory_changed

#> ScoreHolder
# @within function hd.sct:sct/changed.items/shift.click/**
# @within function hd.sct:sct/changed.items/remove.material/loop
 #declare score_holder $HdSct.Least.Number
 #declare score_holder $HdSct.Result.Count
 #declare score_holder $HdSct.Result.Count1
 #declare score_holder $HdSct.Count.Max
 #declare score_holder $HdSct.Count.0
 #declare score_holder $HdSct.Count.1
 #declare score_holder $HdSct.Slot
#> Tags
# @private
 #declare tag HdSctAS
## インベントリーのコピー
	data modify storage hd.sct:temp InventoryCopy set from entity @s Inventory
	data modify storage hd.sct:temp InventoryPast set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Inventory
## 増えたアイテムを特定する
	execute if data storage hd.sct:temp InventoryPast[] run function hd.sct:sct/changed.items/shift.click/find.changed.item.loop
## 特殊作業台内のアイテムのコピー
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:1b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:1b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:2b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:2b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:3b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:3b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:10b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:10b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:11b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:11b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:12b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:12b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:19b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:19b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:20b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:20b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:21b}] run data modify storage hd.sct:temp Materials append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items[{Slot:21b}]
## レシピのアイテムをコピー
	data modify storage hd.sct:temp RecipeItems set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Items
## 
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis] run data modify entity @s HandItems[0] set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Result
## 
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis] unless predicate hd.sct:stack/1 unless predicate hd.sct:stack/16 run scoreboard players set $HdSct.Count.Max HdSct.Temp 64
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis] if predicate hd.sct:stack/1 run scoreboard players set $HdSct.Count.Max HdSct.Temp 1
	execute as @e[type=minecraft:armor_stand,tag=HdSctThis] if predicate hd.sct:stack/16 run scoreboard players set $HdSct.Count.Max HdSct.Temp 16
## 最大何回プレイヤーに完成アイテムを渡せるか確認する
	scoreboard players set $HdSct.Least.Number HdSct.Temp 2147483647
	data modify storage hd.sct:temp Materials append from storage hd.sct: Blank[]
	data modify storage hd.sct:temp RecipeItems append from storage hd.sct:temp Blank[]
	function hd.sct:sct/changed.items/shift.click/check.count.loop
	execute if data storage hd.sct:temp Materials[{_:1b}] run data remove storage hd.sct:temp Materials[{_:1b}]
	execute if data storage hd.sct:temp RecipeItems[{_:1b}] run data remove storage hd.sct:temp RecipeItems[{_:1b}]
## 完成アイテムの数を取得
	execute store result score $HdSct.Result.Count HdSct.Temp store result score $HdSct.Result.Count1 HdSct.Temp run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Result.Count
	execute store result score $HdSct.Count.0 HdSct.Temp run data get storage hd.sct:temp InventoryCopy[-1].Count
## 渡す完成アイテムの数を計算する
	scoreboard players operation $HdSct.Result.Count HdSct.Temp *= $HdSct.Least.Number HdSct.Temp
## Countを上書き
	execute store result storage hd.sct:temp InventoryCopy[-1].Count byte 1 run scoreboard players operation $HdSct.Count.0 HdSct.Temp += $HdSct.Result.Count HdSct.Temp
	execute if score $HdSct.Count.0 HdSct.Temp <= $HdSct.Count.Max HdSct.Temp store result storage hd.sct:temp InventoryCopy[-1].Count byte 1 run scoreboard players operation $HdSct.Count.0 HdSct.Temp -= $HdSct.Result.Count1 HdSct.Temp
	execute if score $HdSct.Count.0 HdSct.Temp > $HdSct.Count.Max HdSct.Temp store result storage hd.sct:temp InventoryCopy[-1].Count byte 1 run scoreboard players get $HdSct.Count.Max HdSct.Temp
## 上記の計算で Count > 64 だったら
	execute if score $HdSct.Count.0 HdSct.Temp > $HdSct.Count.Max HdSct.Temp run function hd.sct:sct/changed.items/shift.click/above.65/
## アイテムを返す
	data modify storage hd.sct:lib PlaceItems append from storage hd.sct:temp InventoryCopy[-1]
	function hd.sct:lib/place.items/
## 素材アイテムを減らす
	function hd.sct:sct/changed.items/remove.material/main
## 完成アイテムSlotを直す
	loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
## SCTのレシピデータを消す
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdSct.Count.0
	scoreboard players reset $HdSct.Count.1
	scoreboard players reset $HdSct.Least.Number
	scoreboard players reset $HdSct.Result.Count
	scoreboard players reset $HdSct.Result.Count1
	scoreboard players reset $HdSct.Slot
## 一時使用Storageをリセット
	data remove storage hd.sct:temp InventoryCopy
	data remove storage hd.sct:temp InventoryPast
	data remove storage hd.sct:temp RecipeItems
