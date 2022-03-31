#> hd.rc:lib/compare.item/id/tag/find.item.loop
#
# アイテムが同じか確認
#
# @within function hd.rc:lib/compare.item/id/tag/
# @private

## 重ねる
	execute store success score $HdRc.lib.Different HdRc.Temp run data modify storage hd.rc:lib TagsCopy[-1].Value[-1] set from storage hd.rc:lib ComparedItem1.id
## 違ったら、データを削除
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run data remove storage hd.rc:lib TagsCopy[-1].Value[-1]
## ループ
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 if data storage hd.rc:lib TagsCopy[-1].Value[] run function hd.rc:lib/compare.item/id/tag/find.item.loop
