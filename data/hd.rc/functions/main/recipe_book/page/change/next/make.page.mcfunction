#> hd.rc:main/recipe_book/page/change/next/make.page
#
# 
#
# @within function hd.rc:main/recipe_book/page/change/next/

## やっぱ、ページ作っちゃうも～～ん
	execute positioned ~ -3000 ~ run function hd.rc:main/recipe_book/page/make/
## 
	data modify entity @s data.Using.RecipeBook set from storage hd.rc:recipe_book _[-1].Data
## 
	execute unless data storage hd.rc:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/cant.next
	execute if data storage hd.rc:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/next
## 
	function hd.rc:main/recipe_book/air
