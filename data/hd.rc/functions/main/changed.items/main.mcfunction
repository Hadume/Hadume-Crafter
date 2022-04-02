#> hd.rc:main/changed.items/main
#
# RCの中身が変ってたら
#
# @within function hd.rc:main/changed.items/

#> ScoreHolder
# @private
# @within function
#   hd.rc:main/crafter/
#   hd.rc:main/crafter/remove.material/check
 #declare score_holder $HdRc.Changed
## どのアイテムが変ったかの検知の準備
	data modify storage hd.rc:temp ItemsCopy set from entity @s data.Using.Items
## RCのアイテムの数を取得
	execute store result score $HdRc.Changed HdRc.Temp if data storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
## レシピブックを開いていたら
	execute if entity @s[scores={HdRc.Page=1..}] run function hd.rc:main/recipe_book/
## レシピブックを閉じていたら
	execute unless entity @s[scores={HdRc.Page=1..}] if data storage hd.rc:temp ItemsCopy[] run function hd.rc:main/crafter/
## Storageを削除
	data remove storage hd.rc:temp ItemsCopy
## データを保存
	data modify entity @s data.Using.Items set from block ~ ~ ~ Items
