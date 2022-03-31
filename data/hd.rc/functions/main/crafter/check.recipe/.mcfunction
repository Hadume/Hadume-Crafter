#> hd.rc:main/crafter/check.recipe/
#
# レシピ確認工程１。アイテムがあるか確認
#
# @within function hd.rc:main/crafter/

## RCのUIのアイテムを消す
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
	execute if data entity @s data.Using.Recipe run data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
## RCの中にアイテムが無かったら、完成アイテムSlotを戻す
	execute unless data storage hd.rc:temp ItemsCopy[] if data entity @s data.Using.Recipe run function hd.rc:main/crafter/check.recipe/reset.complete
## RCの中にアイテムが有ったら、レシピを確認
	execute if data storage hd.rc:temp ItemsCopy[] run function hd.rc:main/crafter/check.recipe/prepare
