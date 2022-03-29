#> hd.rc:main/recipe_book/page/make/make/if.not_yet
#
# 
#
# @within function hd.rc:main/recipe_book/page/make/make/loop

## 
	data modify storage hd.rc:recipe_book _[-1].Data append from storage hd.rc:recipe_book NotYet[0].Result
	data modify storage hd.rc:recipe_book _[-1].Data[-1].tag.HdRc set value {}
	data modify storage hd.rc:recipe_book _[-1].Data[-1].tag.HdRc.Recipe.Items set from storage hd.rc:recipe_book NotYet[0].display
