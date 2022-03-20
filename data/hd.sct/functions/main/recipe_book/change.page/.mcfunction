#> hd.sct:main/recipe_book/change.page/
#
# 
#
# @within function hd.sct:main/recipe_book/change.page/**

## ページを探す
	function hd.sct:main/recipe_book/find/
## ページがあったら、上書き
	execute if data storage hd.sct:temp PageCopy[] run data modify entity @s data.Using.RecipeBook set from storage hd.sct:temp PageCopy[0].Data
## 
	function hd.sct:main/recipe_book/air
## 
	execute unless data storage hd.sct:recipe_book NotYet[] if data storage hd.sct:temp PageCopy[-2] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/next
	execute unless data storage hd.sct:recipe_book NotYet[] unless data storage hd.sct:temp PageCopy[-2] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/cant.next
	execute if data storage hd.sct:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/next

	execute if entity @s[scores={HdSct.Page=2..}] run loot replace block ~ ~ ~ container.5 loot hd.sct:gui/recipe_book/prev
	execute if entity @s[scores={HdSct.Page=1}] run loot replace block ~ ~ ~ container.5 loot hd.sct:gui/recipe_book/cant.prev
## 
	execute if data storage hd.sct:temp RecipesCopy[{tag:{HdSct:{Recipe:{Selected:1b}}}}] run data remove storage hd.sct:temp RecipesCopy[{tag:{HdSct:{Recipe:{Selected:1b}}}}].tag.HdSct.Recipe.Selected
## 
	data remove entity @s data.Using.RecipeBookTag
