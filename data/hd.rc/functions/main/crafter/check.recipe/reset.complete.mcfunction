#> hd.rc:main/crafter/check.recipe/reset.complete
#
# 
#
# @within function
#   hd.rc:main/crafter/check.recipe/
#   hd.rc:main/crafter/check.recipe/prepare

# アイテムをおく
	loot replace block ~ ~ ~ container.15 loot hd.rc:gui/air
# 完成アイテムのデータを消す
	execute if data entity @s data.Using.Recipe run data remove entity @s data.Using.Recipe
