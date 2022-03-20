#> hd.sct:recipes/book/make/make/if.not_yet
#
# 
#
# @within function hd.sct:recipes/book/make/make/loop

## 
	data modify storage hd.sct:recipe_book _[-1].Data append from storage hd.sct:recipe_book NotYet[0].Result
	data modify storage hd.sct:recipe_book _[-1].Data[-1].tag.HdSct set value {}
	data modify storage hd.sct:recipe_book _[-1].Data[-1].tag.HdSct.Recipe.Items set from storage hd.sct:recipe_book NotYet[0].display
