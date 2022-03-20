#> hd.sct:main/crafter/check.recipe/anywhere/move
#
# データを移しておく
#
# @within function hd.sct:main/crafter/check.recipe/anywhere/loop

## 
	data modify storage hd.sct:temp RecipeItemsStash prepend from storage hd.sct:temp RecipesCopy[-1].Items[-10]
## データを消す
	data remove storage hd.sct:temp RecipesCopy[-1].Items[-10]
	data remove storage hd.sct:temp ItemsCopy[-1]
## 空白のデータを戻す
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[{_:1b}] run data remove storage hd.sct:temp RecipesCopy[-1].Items[{_:1b}]
	data modify storage hd.sct:temp RecipesCopy[-1].Items append from storage hd.sct: Blank[]
