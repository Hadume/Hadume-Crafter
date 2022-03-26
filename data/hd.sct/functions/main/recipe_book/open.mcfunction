#> hd.sct:main/recipe_book/open
#
# レシピブックを開く
#
# @within function hd.sct:main/crafter/

## レシピデータを消す
	execute if data entity @s data.Using.Recipe run data remove storage hd.sct:temp ItemsCopy[{Slot:15b}]
	execute if data entity @s data.Using.Recipe run data remove entity @s data.Using.Recipe
## アイテムを返す
	data remove storage hd.sct:temp ItemsCopy[{tag:{HdSct:{}}}]
	execute if data storage hd.sct:temp ItemsCopy[] run data modify storage hd.sct:lib ReturnItems set from storage hd.sct:temp ItemsCopy
	execute if data storage hd.sct:temp ItemsCopy[] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## レシピブックが無かったら生成
	execute unless data storage hd.sct:recipe_book _[] positioned ~ -3000 ~ run function hd.sct:main/recipe_book/page/make/
## 
	scoreboard players set @s HdSct.Page 1
## 作業台にレシピブックデータを入れる
	function hd.sct:main/recipe_book/page/change/
## 
	loot replace block ~ ~ ~ container.14 loot hd.sct:gui/recipe_book/close.recipe_book
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
	data modify block ~ ~ ~ Items append from entity @s data.Using.RecipeBook[]
