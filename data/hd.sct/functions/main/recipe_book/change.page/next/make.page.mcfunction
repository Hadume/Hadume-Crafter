#> hd.sct:main/recipe_book/change.page/next/make.page
#
# 
#
# @within function hd.sct:main/recipe_book/change.page/next/

## やっぱ、ページ作っちゃうも～～ん
	function hd.sct:main/recipe_book/make/
## 
	data modify entity @s data.Using.RecipeBook set from storage hd.sct:recipe_book _[-1].Data
## 
	execute unless data storage hd.sct:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/cant.next
	execute if data storage hd.sct:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/next
