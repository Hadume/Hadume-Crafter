#> hd.sct:lib/compare.item/id/tag/find.item.loop
#
# アイテムが同じか確認
#
# @within function hd.sct:lib/compare.item/id/tag/
# @private

## 重ねる
	execute store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:temp TagsCopy[-1].Value[-1] set from storage hd.sct:temp ItemsCopy[-10].id
## 違ったら、データを消す
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run data remove storage hd.sct:temp TagsCopy[-1].Value[-1]
## ループ
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 if data storage hd.sct:temp TagsCopy[-1].Value[] run function hd.sct:lib/compare.item/id/tag/find.item.loop
