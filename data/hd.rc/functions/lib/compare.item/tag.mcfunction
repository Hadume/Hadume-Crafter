#> hd.rc:lib/compare.item/tag
#
# tagが同じか確認
#
# @internal

## display, damageを削除
	execute if data storage hd.rc:lib RemoveDisplay if data storage hd.rc:lib ComparedItem1.tag.display run data remove storage hd.rc:lib ComparedItem1.tag.display
	execute if data storage hd.rc:lib RemoveDisplay if data storage hd.rc:lib ComparedItem2.tag.display run data remove storage hd.rc:lib ComparedItem2.tag.display
	execute if data storage hd.rc:lib RemoveDamage if data storage hd.rc:lib ComparedItem1.tag.damage run data remove storage hd.rc:lib ComparedItem1.tag.damage
	execute if data storage hd.rc:lib RemoveDamage if data storage hd.rc:lib ComparedItem2.tag.damage run data remove storage hd.rc:lib ComparedItem2.tag.damage
## 
	execute store success score $HdRc.lib.Different HdRc.Temp run data modify storage hd.rc:lib ComparedItem2.tag set from storage hd.rc:lib ComparedItem1.tag
## どちらかにtagが無かったら失敗判定
	execute unless data storage hd.rc:lib ComparedItem1.tag run scoreboard players set $HdRc.lib.Different HdRc.Temp 1
	execute unless data storage hd.rc:lib ComparedItem2.tag run scoreboard players set $HdRc.lib.Different HdRc.Temp 1
