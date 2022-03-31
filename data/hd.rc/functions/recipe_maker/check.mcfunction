#> hd.rc:recipe_maker/check
#
# レシピデータを出力するか確認
#
# @within function hd.rc:recipe_maker/

## RMを開いているプレイヤーを特定
	tag @s add HdRcThis
	execute as @a[distance=..6] if score @s HdRc.ID = @e[type=minecraft:marker,tag=HdRcThis,distance=..0.001,limit=1] HdRc.ID run tag @s add HdRcThis
	tag @s remove HdRcThis
## RMのアイテムを削除
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
## 完成アイテムが有ったら
	execute if data storage hd.rc:temp ItemsCopy[{Slot:15b}] run function hd.rc:recipe_maker/result
## レシピ出力が出来なかったら
	execute unless data storage hd.rc:temp Tell.Recipes run tellraw @a[tag=HdRcThis] [{"storage": "hd.rc:","nbt":"tellrawName"},{"text": " "},{"text": "レシピ出力用の条件に達していません。","color":"red"}]
## アイテムを返す
	execute if data storage hd.rc:temp ItemsCopy[{Slot:17b}] run data modify storage hd.rc:lib ReturnItems append from storage hd.rc:temp ItemsCopy[{Slot:17b}]
	execute if data storage hd.rc:temp ItemsCopy[{Slot:17b}] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## GUIを戻す
	loot replace block ~ ~ ~ container.17 loot hd.rc:gui/export
## Tagを外す
	tag @a[tag=HdRcThis] remove HdRcThis
## データを保存
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
## Storageを削除
	execute if data storage hd.rc:temp Tell run data remove storage hd.rc:temp Tell
