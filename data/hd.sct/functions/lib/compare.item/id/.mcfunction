#> hd.sct:lib/compare.item/id/
#
# id、Tagが同じか確認
#
# @internal

## 
	execute if data storage hd.sct:lib ComparedItem2.id store success score $HdSct.lib.Different HdSct.Temp run data modify storage hd.sct:lib ComparedItem2.id set from storage hd.sct:lib ComparedItem1.id
## 
	execute if data storage hd.sct:lib ComparedItem2.Tag unless data storage hd.sct:lib ComparedItem2.id run function hd.sct:lib/compare.item/id/tag/
## tagの確認
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:lib ComparedItem1.tag run function hd.sct:lib/compare.item/tag/
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 if data storage hd.sct:lib ComparedItem2.tag unless data storage hd.sct:lib ComparedItem1.tag run function hd.sct:lib/compare.item/tag/
