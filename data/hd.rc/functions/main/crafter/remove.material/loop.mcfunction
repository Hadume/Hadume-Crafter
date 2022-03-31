#> hd.rc:main/crafter/remove.material/loop
#
# アイテムのCountを減らす
#
# @within function hd.rc:main/crafter/remove.material/as
# @private

## Countを取得
	execute store result score $HdRc.Count.1 HdRc.Temp run data get storage hd.rc:temp Materials[-10].Count
	execute store result score $HdRc.Count.2 HdRc.Temp run data get storage hd.rc:temp RecipeItemsCopy[-10].Count
## 一括で渡したら
	execute if score $HdRc.Least.Number HdRc.Temp matches 1.. run scoreboard players operation $HdRc.Count.2 HdRc.Temp *= $HdRc.Least.Number HdRc.Temp
## アイテムを減らさない
	data modify entity @s HandItems[0] set from storage hd.rc:temp Materials[-10]
	execute if predicate hd.rc:not.remove/_ run function hd.rc:main/crafter/remove.material/not.remove
## Countを代入
	execute store result storage hd.rc:temp Materials[-10].Count byte 1 run scoreboard players operation $HdRc.Count.1 HdRc.Temp -= $HdRc.Count.2 HdRc.Temp
## データを削除
	data remove storage hd.rc:temp Materials[-1]
	data remove storage hd.rc:temp RecipeItemsCopy[-1]
## ループ
	execute if data storage hd.rc:temp Materials[-10] run function hd.rc:main/crafter/remove.material/loop
