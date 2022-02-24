#> hd.sct:sct/changed.items/shift.click/above.65/
#
# 完成アイテムを渡す
#
# @within function hd.sct:sct/changed.items/shift.click/

#> ScoreHolder
# @within function hd.sct:sct/changed.items/shift.click/above.65/*
 #declare score_holder $HdSct.Inventory.Slot
 #declare score_holder $HdSct.64
## 定数を用意
	scoreboard players set $HdSct.64 HdSct.Temp -64
## プレイヤーにどれだけアイテムを渡せるか確認
	execute store result score $HdSct.Inventory.Slot HdSct.Temp if data entity @s Inventory[]
	execute unless data entity @s Inventory[{Slot:100b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:101b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:102b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:103b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	execute unless data entity @s Inventory[{Slot:-106b}] run scoreboard players add $HdSct.Inventory.Slot HdSct.Temp 1
	scoreboard players remove $HdSct.Inventory.Slot HdSct.Temp 41
	scoreboard players operation $HdSct.Inventory.Slot HdSct.Temp *= $HdSct.64 HdSct.Temp
## プレイヤーに渡せる数より、渡す予定の完成アイテムのほうが多かったら
	execute if score $HdSct.Inventory.Slot HdSct.Temp < $HdSct.Result.Count HdSct.Temp run function hd.sct:sct/changed.items/shift.click/above.65/adjust.count
## プレイヤーに渡した分Countを減らす
	scoreboard players remove $HdSct.Result.Count HdSct.Temp 64
## アイテムのCountを決める
	function hd.sct:sct/changed.items/shift.click/above.65/set.count.loop
## 一時使用ScoreHolderのリセット
	scoreboard players reset $HdSct.Inventory.Slot
