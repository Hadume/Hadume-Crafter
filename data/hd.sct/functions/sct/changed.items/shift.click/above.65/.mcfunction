#> hd.sct:sct/changed.items/shift.click/above.65/
#
# 完成アイテムを渡す
#
# @within function hd.sct:sct/changed.items/shift.click/

#> ScoreHolder
# @within function hd.sct:sct/changed.items/shift.click/above.65/*
 #declare score_holder $HdSct.Inventory.Slot
 #declare score_holder $HdSct.-1
## 
	execute store result storage hd.sct:temp InventoryCopy[-1].Count byte 1 run scoreboard players get $HdSct.Count.Max HdSct.Temp
## 
	scoreboard players operation $HdSct.Result.Count HdSct.Temp -= $HdSct.Count.Max.1 HdSct.Temp
## 
	scoreboard players set $HdSct.-1 HdSct.Temp -1
## プレイヤーにどれだけアイテムを渡せるか確認
	execute store result score $HdSct.Inventory.Slot HdSct.Temp if data entity @s Inventory[]
	execute unless data entity @s Inventory[{Slot:100b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:101b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:102b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:103b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:-106b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	scoreboard players remove $HdSct.Inventory.Slot HdSct.Temp 41
	scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp *= $HdSct.Count.Max HdSct.Temp
	scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp *= $HdSct.-1 HdSct.Temp
## プレイヤーに渡せる数より、渡す予定の完成アイテムのほうが多かったら
	execute if score $HdSct.Inventory.Slot HdSct.Temp < $HdSct.Result.Count HdSct.Temp run function hd.sct:sct/changed.items/shift.click/above.65/adjust.count
## 完成アイテムと同じアイテムを探す
	data modify storage hd.sct:temp InventoryCopy set from entity @s Inventory
	data remove storage hd.sct:temp InventoryCopy[{Slot:-106b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:100b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:101b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:102b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:103b}]
	data modify storage hd.sct:lib ComparedItem1 set from entity @e[type=minecraft:marker,tag=HdSctThis,limit=1] data.Using.Recipe.Result
	function hd.sct:sct/changed.items/shift.click/above.65/find.same.items.loop
	function hd.sct:lib/compare.item/reset
## Countを代入
	data remove entity @e[type=minecraft:marker,tag=HdSctThis,limit=1] data.Using.Recipe.Result.Slot
	execute if data storage hd.sct:temp SameItems[] run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
	execute if score $HdSct.Result.Count HdSct.Temp matches 1.. run function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop1
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdSct.Inventory.Slot
