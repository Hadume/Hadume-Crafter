#> hd.sct:sct/changed.items/check.recipe/reset.complete
#
# 
#
# @within function hd.sct:sct/changed.items/check.recipe/1

# アイテムをおく
	loot replace block ~ ~ ~ container.0 loot hd.sct:gui/air
# 完成アイテムのデータを消す
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSctRecipe
