#> hd.sct:lib/compare.item/tag/
#
# tagが同じか確認
#
# @internal

## display, damageを消す
	execute if data storage hd.sct:lib RemoveElements run function hd.sct:lib/compare.item/tag/remove.elements
## 
	execute store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:lib ComparedItem2.tag set from storage hd.sct:lib ComparedItem1.tag
