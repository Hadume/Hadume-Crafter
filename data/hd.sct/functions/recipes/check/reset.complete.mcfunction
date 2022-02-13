#> hd.sct:recipes/check/reset.complete
#
# 
#
# @within function hd.sct:recipes/check/

# アイテムをおく
	loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
# 完成アイテムのデータを消す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe
