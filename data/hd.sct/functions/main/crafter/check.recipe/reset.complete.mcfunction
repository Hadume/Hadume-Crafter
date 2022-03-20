#> hd.sct:main/crafter/check.recipe/reset.complete
#
# 
#
# @within function
#   hd.sct:main/crafter/check.recipe/
#   hd.sct:main/crafter/check.recipe/prepare

# アイテムをおく
	loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
# 完成アイテムのデータを消す
	execute if data entity @s data.Using.Recipe run data remove entity @s data.Using.Recipe
