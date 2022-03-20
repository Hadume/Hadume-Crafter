#> hd.sct:main/crafter/shift.click/above.65/
#
# 完成アイテムを渡す
#
# @within function hd.sct:main/crafter/shift.click/

#> ScoreHolder
# @within function hd.sct:main/crafter/shift.click/above.65/*
 #declare score_holder $HdSct.Inventory.Slot
 #declare score_holder $HdSct.-1
## 
	execute store result storage hd.sct:temp InventoryCopy[-1].Count byte 1 run scoreboard players get $HdSct.Count.Max HdSct.Temp
## 
	data modify storage hd.sct:lib PlaceItems append from storage hd.sct:temp InventoryCopy[-1]
	data remove storage hd.sct:temp InventoryCopy[-1]
## 
	scoreboard players operation $HdSct.Result.Count HdSct.Temp -= $HdSct.Count.Max.1 HdSct.Temp
#tellraw @a {"score":{"name": "$HdSct.Result.Count","objective": "HdSct.Temp"}}
## 
	scoreboard players set $HdSct.-1 HdSct.Temp -1
## プレイヤーにどれだけアイテムを渡せるか確認
	data modify storage hd.sct:temp InventoryCopy append from storage hd.sct:temp InventoryStash[]
	execute store result score $HdSct.Inventory.Slot HdSct.Temp if data storage hd.sct:temp InventoryCopy[]
	execute unless data storage hd.sct:temp InventoryCopy[{Slot:100b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data storage hd.sct:temp InventoryCopy[{Slot:101b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data storage hd.sct:temp InventoryCopy[{Slot:102b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data storage hd.sct:temp InventoryCopy[{Slot:103b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data storage hd.sct:temp InventoryCopy[{Slot:-106b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	scoreboard players remove $HdSct.Inventory.Slot HdSct.Temp 41
	scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp *= $HdSct.Count.Max HdSct.Temp
	scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp *= $HdSct.-1 HdSct.Temp
## プレイヤーに渡せる数より、渡す予定の完成アイテムのほうが多かったら
	execute if score $HdSct.Inventory.Slot HdSct.Temp < $HdSct.Result.Count HdSct.Temp run function hd.sct:main/crafter/shift.click/above.65/adjust.count
## 完成アイテムと同じアイテムを探す
	data remove storage hd.sct:temp InventoryCopy[{Slot:-106b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:100b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:101b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:102b}]
	data remove storage hd.sct:temp InventoryCopy[{Slot:103b}]
	data modify storage hd.sct:lib ComparedItem1 set from entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result
	function hd.sct:main/crafter/shift.click/above.65/find.same.items.loop
	function hd.sct:lib/compare.item/reset
	#tellraw @a {"storage":"hd.sct:temp","nbt":"SameItems"}
## Countを代入
	data remove entity @e[type=minecraft:marker,tag=HdSctThis,distance=..0.001,limit=1] data.Using.Recipe.Result.Slot
	execute if data storage hd.sct:temp SameItems[] run function hd.sct:main/crafter/shift.click/above.65/set.count.loop
#tellraw @a {"score":{"name": "$HdSct.Result.Count","objective": "HdSct.Temp"}}
	execute if score $HdSct.Result.Count HdSct.Temp matches 1.. run function hd.sct:main/crafter/shift.click/above.65/set.count.loop1
#tellraw @a {"storage":"hd.sct:lib","nbt":"PlaceItems"}
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdSct.Inventory.Slot
