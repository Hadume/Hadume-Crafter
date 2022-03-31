#> hd.rc:block/break/remove.result/
#
# 完成アイテムを消す
#
# @within function hd.rc:block/break/

#> Tags
# @within function hd.rc:block/break/remove.result/*
 #declare tag HdRcChecking
 #declare tag HdRcSameItem
## 完成アイテムをコピー
	data modify storage hd.rc:lib ComparedItem1 set from entity @s data.Using.Recipe.Result
## 同じCountだと確認できるように
	data modify storage hd.rc:lib SameCount set value 1b
## アイテムにタグを付ける
	execute as @e[type=minecraft:item,predicate=hd.rc:age,distance=..1] run tag @s add HdRcChecking
## アイテムを確認
	execute as @e[type=minecraft:item,tag=HdRcChecking,distance=..1,sort=nearest,limit=1] run function hd.rc:block/break/remove.result/loop
## タグを外す
	execute as @e[type=minecraft:item,tag=HdRcChecking,distance=..1] run tag @s remove HdRcChecking
## データを削除
	function hd.rc:lib/compare.item/reset
