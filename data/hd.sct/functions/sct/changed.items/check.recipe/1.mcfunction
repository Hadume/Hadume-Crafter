#> hd.sct:sct/changed.items/check.recipe/1
#
# レシピ確認工程１。SCTの中にアイテムがあるか確認
#
# @within function hd.sct:sct/changed.items/

say レシピ確認工程１
# 特殊作業台のUIのアイテムを消す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
# 特殊作業台の中にアイテムがなかったら、完成アイテムSlotのアイテムを変える
	execute unless data storage hd.sct:temp ItemsCopy[] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSctRecipe run function hd.sct:sct/changed.items/check.recipe/reset.complete
# 特殊作業台の中にアイテムがあったら、次の工程を実行する
	execute if data storage hd.sct:temp ItemsCopy[] run function hd.sct:sct/changed.items/check.recipe/2/
# 特殊作業台の中のアイテムを個人ストレージに保存する
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items set from block ~ ~ ~ Items
