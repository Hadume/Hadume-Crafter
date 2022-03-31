#> hd.rc:lib/compare.item/id/
#
# id か Tagが同じか確認
#
# @internal

## idを確認
	execute if data storage hd.rc:lib ComparedItem2.id store success score $HdRc.lib.Different HdRc.Temp run data modify storage hd.rc:lib ComparedItem2.id set from storage hd.rc:lib ComparedItem1.id
## Tagを確認
	execute if data storage hd.rc:lib ComparedItem2.Tag unless data storage hd.rc:lib ComparedItem2.id run function hd.rc:lib/compare.item/id/tag/
## tagを確認
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 if data storage hd.rc:lib ComparedItem1.tag run function hd.rc:lib/compare.item/tag
	execute if score $HdRc.lib.Different HdRc.Temp matches 0 if data storage hd.rc:lib ComparedItem2.tag unless data storage hd.rc:lib ComparedItem1.tag run function hd.rc:lib/compare.item/tag
