#> hd.sct:recipes/check/find/anywhere/
#
# レシピ確認の準備
#
# @within function hd.sct:recipes/check/find/loop

## レシピ確認
	function hd.sct:recipes/check/find/anywhere/loop
## 要らない物を消す
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.sct:temp RecipesCopy[-1].Items[{_:1b}]
## レシピが同じだったら
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run data modify storage hd.sct:temp RecipesCopy[-1].Items set from storage hd.sct:temp RecipeItemsStash
## 一時レシピアイテムを消す
	execute if data storage hd.sct:temp RecipeItemsStash run data remove storage hd.sct:temp RecipeItemsStash
