#> hd.sct:recipes/check/
#
# レシピ確認工程１。SCTの中にアイテムがあるか確認
#
# @within function hd.sct:sct/changed.items/not.recipe_book

## 特殊作業台のUIのアイテムを消す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
	execute if data entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
## 特殊作業台の中にアイテムがなかったら、完成アイテムSlotのアイテムを変える
	execute unless data storage hd.sct:temp ItemsCopy[] if data entity @e[predicate=hd.sct:storage,limit=1] data.Using.Recipe run function hd.sct:recipes/check/reset.complete
## 特殊作業台の中にアイテムがあったら、次の工程を実行する
	execute if data storage hd.sct:temp ItemsCopy[] run function hd.sct:recipes/check/find/
