#> hd.rc:main/crafter/shift.click/above.65/
#
# 完成アイテムを渡す
#
# @within function hd.rc:main/crafter/shift.click/

#> ScoreHolder
# @within function hd.rc:main/crafter/shift.click/above.65/*
 #declare score_holder $HdRc.Inventory.Slot
 #declare score_holder $HdRc.-1
## Countを調整
	execute store result storage hd.rc:temp InventoryCopy[-1].Count byte 1 run scoreboard players get $HdRc.Count.Max HdRc.Temp
## 変ったアイテムを移動
	data modify storage hd.rc:lib PlaceItems append from storage hd.rc:temp InventoryCopy[-1]
	data remove storage hd.rc:temp InventoryCopy[-1]
## Countを減らす
	scoreboard players operation $HdRc.Result.Count HdRc.Temp -= $HdRc.Count.Max.1 HdRc.Temp
## スコアを定義
	scoreboard players set $HdRc.-1 HdRc.Temp -1
## どれだけアイテムを渡せるか確認
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
## プレイヤーに渡せる数より渡す予定のアイテムのほうが多かったら
	execute if score $HdRc.Inventory.Slot HdRc.Temp < $HdRc.Result.Count HdRc.Temp run function hd.rc:main/crafter/shift.click/above.65/adjust.count
## 完成アイテムと同じアイテムを探す
	### インベントリー以外は削除
		data remove storage hd.rc:temp InventoryCopy[{Slot:-106b}]
		data remove storage hd.rc:temp InventoryCopy[{Slot:100b}]
		data remove storage hd.rc:temp InventoryCopy[{Slot:101b}]
		data remove storage hd.rc:temp InventoryCopy[{Slot:102b}]
		data remove storage hd.rc:temp InventoryCopy[{Slot:103b}]
	### 比べるアイテムをコピー
		data modify storage hd.rc:lib ComparedItem1 set from entity @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] data.Using.Recipe.Result
	### 
		function hd.rc:main/crafter/shift.click/above.65/find.same.items.loop
	### データを削除
		function hd.rc:lib/compare.item/reset
## Slotを削除
	data remove entity @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] data.Using.Recipe.Result.Slot
## Countを代入
	execute if data storage hd.rc:temp SameItems[] run function hd.rc:main/crafter/shift.click/above.65/set.count.loop
	execute if score $HdRc.Result.Count HdRc.Temp matches 1.. run function hd.rc:main/crafter/shift.click/above.65/set.count.loop1
## ScoreHolderを削除
	scoreboard players reset $HdRc.Inventory.Slot
