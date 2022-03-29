#> hd.rc:main/crafter/shift.click/above.65/
#
# 完成アイテムを渡す
#
# @within function hd.rc:main/crafter/shift.click/

#> ScoreHolder
# @within function hd.rc:main/crafter/shift.click/above.65/*
 #declare score_holder $HdRc.Inventory.Slot
 #declare score_holder $HdRc.-1
## 
	execute store result storage hd.rc:temp InventoryCopy[-1].Count byte 1 run scoreboard players get $HdRc.Count.Max HdRc.Temp
## 
	data modify storage hd.rc:lib PlaceItems append from storage hd.rc:temp InventoryCopy[-1]
	data remove storage hd.rc:temp InventoryCopy[-1]
## 
	scoreboard players operation $HdRc.Result.Count HdRc.Temp -= $HdRc.Count.Max.1 HdRc.Temp
## 
	scoreboard players set $HdRc.-1 HdRc.Temp -1
## プレイヤーにどれだけアイテムを渡せるか確認
	data modify storage hd.rc:temp InventoryCopy append from storage hd.rc:temp InventoryStash[]
	execute store result score $HdRc.Inventory.Slot HdRc.Temp if data storage hd.rc:temp InventoryCopy[]
	execute unless data storage hd.rc:temp InventoryCopy[{Slot:100b}] run scoreboard players add $HdRc.Inventory.Slot HdRc.Temp 1
	execute unless data storage hd.rc:temp InventoryCopy[{Slot:101b}] run scoreboard players add $HdRc.Inventory.Slot HdRc.Temp 1
	execute unless data storage hd.rc:temp InventoryCopy[{Slot:102b}] run scoreboard players add $HdRc.Inventory.Slot HdRc.Temp 1
	execute unless data storage hd.rc:temp InventoryCopy[{Slot:103b}] run scoreboard players add $HdRc.Inventory.Slot HdRc.Temp 1
	execute unless data storage hd.rc:temp InventoryCopy[{Slot:-106b}] run scoreboard players add $HdRc.Inventory.Slot HdRc.Temp 1
	scoreboard players remove $HdRc.Inventory.Slot HdRc.Temp 41
	scoreboard players operation $HdRc.Inventory.Slot HdRc.Temp *= $HdRc.Count.Max HdRc.Temp
	scoreboard players operation $HdRc.Inventory.Slot HdRc.Temp *= $HdRc.-1 HdRc.Temp
## プレイヤーに渡せる数より、渡す予定の完成アイテムのほうが多かったら
	execute if score $HdRc.Inventory.Slot HdRc.Temp < $HdRc.Result.Count HdRc.Temp run function hd.rc:main/crafter/shift.click/above.65/adjust.count
## 完成アイテムと同じアイテムを探す
	data remove storage hd.rc:temp InventoryCopy[{Slot:-106b}]
	data remove storage hd.rc:temp InventoryCopy[{Slot:100b}]
	data remove storage hd.rc:temp InventoryCopy[{Slot:101b}]
	data remove storage hd.rc:temp InventoryCopy[{Slot:102b}]
	data remove storage hd.rc:temp InventoryCopy[{Slot:103b}]
	data modify storage hd.rc:lib ComparedItem1 set from entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result
	function hd.rc:main/crafter/shift.click/above.65/find.same.items.loop
	function hd.rc:lib/compare.item/reset
## Countを代入
	data remove entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result.Slot
	execute if data storage hd.rc:temp SameItems[] run function hd.rc:main/crafter/shift.click/above.65/set.count.loop
	execute if score $HdRc.Result.Count HdRc.Temp matches 1.. run function hd.rc:main/crafter/shift.click/above.65/set.count.loop1
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdRc.Inventory.Slot
