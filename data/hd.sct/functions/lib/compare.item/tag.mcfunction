#> hd.sct:lib/compare.item/tag
#
# tagが同じか確認
#
# @internal

## display, damageを消す
	execute if data storage hd.sct:lib RemoveDisplay if data storage hd.sct:lib ComparedItem1.tag.display run data remove storage hd.sct:lib ComparedItem1.tag.display
	execute if data storage hd.sct:lib RemoveDisplay if data storage hd.sct:lib ComparedItem2.tag.display run data remove storage hd.sct:lib ComparedItem2.tag.display
	execute if data storage hd.sct:lib RemoveDamage if data storage hd.sct:lib ComparedItem1.tag.damage run data remove storage hd.sct:lib ComparedItem1.tag.damage
	execute if data storage hd.sct:lib RemoveDamage if data storage hd.sct:lib ComparedItem2.tag.damage run data remove storage hd.sct:lib ComparedItem2.tag.damage
## 
	execute store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:lib ComparedItem2.tag set from storage hd.sct:lib ComparedItem1.tag
