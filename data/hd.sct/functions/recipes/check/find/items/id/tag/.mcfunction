#> hd.sct:recipes/check/find/items/id/tag/
#
# Tagが同じか確認
#
# @within function hd.sct:recipes/check/find/items/id/

## Tagsをコピー
	execute if data storage hd.sct.asset:tags _[] run data modify storage hd.sct:temp TagsCopy set from storage hd.sct.asset:tags _[]
## 指定されたtagを探す
	execute if data storage hd.sct:temp TagsCopy[] run function hd.sct:recipes/check/find/items/id/tag/find.tag.loop
## tagがあったら、アイテムが同じか確認
	execute if data storage hd.sct:temp TagsCopy[] if score $HdSct.Same.Recipe HdSct.Temp matches 0 run function hd.sct:recipes/check/find/items/id/tag/find.item.loop
## Tagsが無かったら
	execute unless data storage hd.sct.asset:tags _[] run scoreboard players set $HdSct.Same.Recipe HdSct.Temp 1
