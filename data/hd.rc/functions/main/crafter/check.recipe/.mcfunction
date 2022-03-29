#> hd.rc:main/crafter/check.recipe/
#
# レシピ確認工程１。SCTの中にアイテムがあるか確認
#
# @within function hd.rc:main/crafter/

## 特殊作業台のUIのアイテムを消す
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
	execute if data entity @s data.Using.Recipe run data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
## 特殊作業台の中にアイテムがなかったら、完成アイテムSlotのアイテムを変える
	execute unless data storage hd.rc:temp ItemsCopy[] if data entity @s data.Using.Recipe run function hd.rc:main/crafter/check.recipe/reset.complete
## 特殊作業台の中にアイテムがあったら、次の工程を実行する
	execute if data storage hd.rc:temp ItemsCopy[] run function hd.rc:main/crafter/check.recipe/prepare
