#> hd.rc:lib/compare.item/id/tag/
#
# Tagが同じか確認
#
# @internal

## Tagsをコピー
	execute if data storage hd.rc.asset:tags _[] run data modify storage hd.rc:lib TagsCopy set from storage hd.rc.asset:tags _
## Tagを探す
	execute if data storage hd.rc:lib TagsCopy[] run function hd.rc:lib/compare.item/id/tag/find.tag.loop
	execute if data storage hd.rc:lib ComparedItem1.id if data storage hd.rc:lib TagsCopy[] if score $HdRc.lib.Different HdRc.Temp matches 0 run function hd.rc:lib/compare.item/id/tag/find.item.loop
## Tagが無かったら失敗判定
	execute unless data storage hd.rc.asset:tags _[] run scoreboard players set $HdRc.lib.Different HdRc.Temp 1
