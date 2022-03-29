#> hd.rc:lib/compare.item/id/tag/find.tag.loop
#
# 指定されたtagを探す
#
# @within function hd.rc:lib/compare.item/id/tag/
# @private

## 重ねる
	execute store success score $HdRc.lib.Different HdRc.Temp run data modify storage hd.rc:lib TagsCopy[-1].Name set from storage hd.rc:lib ComparedItem2.Tag
## 違ったら、データを消す
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run data remove storage hd.rc:lib TagsCopy[-1]
## ループ
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 if data storage hd.rc:lib TagsCopy[] run function hd.rc:lib/compare.item/id/tag/find.tag.loop
