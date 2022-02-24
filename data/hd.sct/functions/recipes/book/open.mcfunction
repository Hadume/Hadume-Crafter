#> hd.sct:recipes/book/open
#
# レシピブックを開く
#
# @within function hd.sct:sct/changed.items/not.recipe_book

## レシピデータを消す
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe
## アイテムを返す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
	data modify storage hd.sct:lib ReturnItems set from storage hd.sct:temp ItemsCopy
	execute positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## レシピブックが無かったら生成
	execute unless data storage hd.sct:recipe_book _[] run function hd.sct:recipes/book/make/
## 作業台にレシピブックデータを入れる
	data modify block ~ ~ ~ Items append from storage hd.sct:recipe_book _[0].Data[]
	loot replace block ~ ~ ~ container.5 loot hd.sct:gui/recipe_book/cant.prev
	loot replace block ~ ~ ~ container.14 loot hd.sct:gui/recipe_book/close.recipe_book
	execute if data storage hd.sct:recipe_book _[1] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/next
	execute unless data storage hd.sct:recipe_book _[1] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/cant.next
	item replace block ~ ~ ~ container.6 with minecraft:air
	item replace block ~ ~ ~ container.7 with minecraft:air
	item replace block ~ ~ ~ container.8 with minecraft:air
	item replace block ~ ~ ~ container.15 with minecraft:air
	item replace block ~ ~ ~ container.16 with minecraft:air
	item replace block ~ ~ ~ container.17 with minecraft:air
	item replace block ~ ~ ~ container.24 with minecraft:air
	item replace block ~ ~ ~ container.25 with minecraft:air
	item replace block ~ ~ ~ container.26 with minecraft:air
## 
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.RecipeBook set from storage hd.sct:recipe_book _[0].Data
## 
	scoreboard players set @s HdSct.Page 1
