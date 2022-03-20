#> hd.sct:lib/compare.item/tag/remove.elements
#
# 
#
# @within function hd.sct:lib/compare.item/tag/

## 
	execute if data storage hd.sct:lib ComparedItem1.tag.display run data remove storage hd.sct:lib ComparedItem1.tag.display
	execute if data storage hd.sct:lib ComparedItem2.tag.display run data remove storage hd.sct:lib ComparedItem2.tag.display
	execute if data storage hd.sct:lib ComparedItem1.tag.damage run data remove storage hd.sct:lib ComparedItem1.tag.damage
	execute if data storage hd.sct:lib ComparedItem2.tag.damage run data remove storage hd.sct:lib ComparedItem2.tag.damage
