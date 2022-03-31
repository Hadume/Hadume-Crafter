#> hd.rc:main/crafter/check.recipe/set.complete/
#
# 完成アイテムを表示させる
#
# @within function hd.rc:main/crafter/check.recipe/prepare

## 仮要素を削除
	execute if data storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}]
## Slotを代入
	data modify storage hd.rc:temp RecipesCopy[-1].Result.Slot set value 15b
## 表示
	data modify block ~ ~ ~ Items append from storage hd.rc:temp RecipesCopy[-1].Result
## display対策で戻す
	data modify storage hd.rc:temp RecipesCopy[-1].Result set from block ~ ~ ~ Items[{Slot:15b}]
## レシピを保存
	execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @s data.Using.Recipe set from storage hd.rc:temp RecipesCopy[-1]
## 完成アイテムが無かったら、完成アイテムSlotを戻す
	execute unless data block ~ ~ ~ Items[{Slot:15b}] run loot replace block ~ ~ ~ container.15 loot hd.rc:gui/air
