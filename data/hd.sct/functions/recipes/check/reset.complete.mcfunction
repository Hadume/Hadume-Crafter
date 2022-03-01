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
	execute if data entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe run data remove entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe
