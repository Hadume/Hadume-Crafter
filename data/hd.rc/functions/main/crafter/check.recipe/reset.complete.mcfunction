#> hd.rc:main/crafter/check.recipe/reset.complete
#
# 完成アイテムSlotを戻す
#
# @within function
#   hd.rc:main/crafter/check.recipe/
#   hd.rc:main/crafter/check.recipe/prepare

## アイテムを挿入
	loot replace block ~ ~ ~ container.15 loot hd.rc:gui/air
## データを削除
	execute if data entity @s data.Using.Recipe run data remove entity @s data.Using.Recipe
