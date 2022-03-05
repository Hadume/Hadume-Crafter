#> hd.sct:lib/compare.item/id/tag/
#
# Tagが同じか確認
#
# @within function hd.sct:lib/compare.item/id/

## Tagsをコピー
	execute if data storage hd.sct.asset:tags _[] run data modify storage hd.sct:temp TagsCopy set from storage hd.sct.asset:tags _
## 指定されたtagを探す
	execute if data storage hd.sct:temp TagsCopy[] run function hd.sct:lib/compare.item/id/tag/find.tag.loop
	execute if data storage hd.sct:temp TagsCopy[] if score $HdSct.lib.Different HdSct.Temp matches 0 run function hd.sct:lib/compare.item/id/tag/find.item.loop
## Tagsが無かったら
	execute unless data storage hd.sct.asset:tags _[] run scoreboard players set $HdSct.lib.Different HdSct.Temp 1
