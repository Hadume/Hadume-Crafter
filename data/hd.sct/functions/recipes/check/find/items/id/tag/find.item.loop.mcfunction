#> hd.sct:recipes/check/find/items/id/tag/find.item.loop
#
# アイテムが同じか確認
#
# @within function hd.sct:recipes/check/find/items/id/tag/
# @private

## 重ねる
	execute store success score $HdSct.Same.Recipe HdSct.Temp run data modify storage hd.sct:temp TagsCopy[-1].Value[-1] set from storage hd.sct:temp ItemsCopy[-10].id
## 違ったら、データを消す
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run data remove storage hd.sct:temp TagsCopy[-1].Value[-1]
## ループ
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 if data storage hd.sct:temp TagsCopy[-1].Value[] run function hd.sct:recipes/check/find/items/id/tag/find.item.loop
