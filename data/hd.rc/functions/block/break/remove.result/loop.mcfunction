#> hd.rc:block/break/remove.result/loop
#
# アイテムを確認
#
# @within function hd.rc:block/break/remove.result/
# @private

## 比べるアイテムをコピー
	data modify storage hd.rc:lib ComparedItem2 set from entity @s Item
## アイテムを比べる
	function hd.rc:lib/compare.item/count
## 同じだったら、アイテムを消す
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 run kill @s
## 違ったら、タグを外す
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run tag @s remove HdRcChecking
## ループ
	execute as @e[type=minecraft:item,tag=HdRcChecking,distance=..1,sort=nearest,limit=1] run function hd.rc:block/break/remove.result/loop
