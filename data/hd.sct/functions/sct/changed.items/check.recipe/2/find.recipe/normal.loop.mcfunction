#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/normal.loop
#
# レシピ確認
#
# @private
# @within function
#   hd.sct:sct/changed.items/check.recipe/2/find.recipe/loop
#   hd.sct:sct/changed.items/check.recipe/2/find.recipe/mirror/*/*
say レシピ確認

## アイテムが同じか確認
	function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/slot
## 仮アイテムを消す
	data remove storage hd.sct:temp ItemsCopy[-1]
	data remove storage hd.sct:temp RecipesCopy[-1].Items[-1]
## ループ
	execute if data storage hd.sct:temp ItemsCopy[-10] if data storage hd.sct:temp RecipesCopy[-1].Items[-10] if score $HdSct.Same.Recipe HdSct.Temp matches 0 run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/normal.loop
