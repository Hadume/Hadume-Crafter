#> hd.rc:main/crafter/check.recipe/set.complete/
#
# 完成アイテムを表示させる
#
# @within function hd.rc:main/crafter/check.recipe/prepare

## 要らない物を消す
	execute if data storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.rc:temp RecipesCopy[-1].Items[{_:1b}]
## 完成アイテムSlotを代入
	data modify storage hd.rc:temp RecipesCopy[-1].Result.Slot set value 15b
## 完成アイテムを特殊作業台に表示させる
	data modify block ~ ~ ~ Items append from storage hd.rc:temp RecipesCopy[-1].Result
## 
	data modify storage hd.rc:temp RecipesCopy[-1].Result set from block ~ ~ ~ Items[{Slot:15b}]
## 今回使ったレシピを、コアの個人ストレージに保存する
	execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @s data.Using.Recipe set from storage hd.rc:temp RecipesCopy[-1]
## 
	execute unless data block ~ ~ ~ Items[{Slot:15b}] run loot replace block ~ ~ ~ container.15 loot hd.rc:gui/air
