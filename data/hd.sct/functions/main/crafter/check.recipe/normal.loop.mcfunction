#> hd.sct:main/crafter/check.recipe/normal.loop
#
# レシピ確認
#
# @private
# @within function
#   hd.sct:main/crafter/check.recipe/checking/unless.anywhere
#   hd.sct:main/crafter/check.recipe/mirror/*/*

## アイテムを移す
	data modify storage hd.sct:lib ComparedItem1 set from storage hd.sct:temp ItemsCopy[-10]
	data modify storage hd.sct:lib ComparedItem2 set from storage hd.sct:temp RecipesCopy[-1].Items[-10]
## アイテムが同じか確認
	function hd.sct:lib/compare.item/slot
## 仮アイテムを消す
	data remove storage hd.sct:temp ItemsCopy[-1]
	data remove storage hd.sct:temp RecipesCopy[-1].Items[-1]
## ループ
	execute if data storage hd.sct:temp ItemsCopy[-10] if data storage hd.sct:temp RecipesCopy[-1].Items[-10] if score $HdSct.lib.Different HdSct.Temp matches 0 run function hd.sct:main/crafter/check.recipe/normal.loop
