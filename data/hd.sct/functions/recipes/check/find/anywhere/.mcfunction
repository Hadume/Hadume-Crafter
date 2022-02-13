#> hd.sct:recipes/check/find/anywhere/
#
# レシピ確認の準備
#
# @within function hd.sct:recipes/check/find/loop

say どこでも
## レシピ確認
	function hd.sct:recipes/check/find/anywhere/loop
## レシピが同じだったら
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 0 unless data storage hd.sct:temp ItemsCopy[-10] unless data storage hd.sct:temp RecipesCopy[-1].Items[] run data modify storage hd.sct:temp RecipesCopy[-1].Items set from storage hd.sct:temp RecipeItemsStash
## 一時レシピアイテムを消す
	execute if data storage hd.sct:temp RecipeItemsStash run data remove storage hd.sct:temp RecipeItemsStash
