#> hd.sct:recipes/check/reset.complete
#
# 
#
# @within function
#   hd.sct:recipes/check/
#   hd.sct:recipes/check/find/

# アイテムをおく
	loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
# 完成アイテムのデータを消す
	execute if data entity @s data.Using.Recipe run data remove entity @s data.Using.Recipe
