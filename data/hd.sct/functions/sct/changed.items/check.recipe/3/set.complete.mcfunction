#> hd.sct:sct/changed.items/check.recipe/3/set.complete
#
# 完成アイテムを表示させる
#
# @within function hd.sct:sct/changed.items/check.recipe/2/
say レシピ確認３

## 完成アイテムを特殊作業台に表示させる
	data modify block ~ ~ ~ Items append from storage hd.sct:temp RecipesCopy[-1].Complete
## 完成アイテムを再度取得(アイテムのdamageを取得するため)
	data modify storage hd.sct:temp RecipesCopy[-1].Complete set from block ~ ~ ~ Items[{Slot:15b}]
## 要らない物を消す
	data remove storage hd.sct:temp RecipesCopy[-1].Items[{Blank:1b}]
## 今回使ったレシピを、コアの個人ストレージに保存する
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Recipe set from storage hd.sct:temp RecipesCopy[-1]
