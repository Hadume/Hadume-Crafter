#> hd.rc:main/recipe_book/open
#
# レシピブックを開く
#
# @within function hd.rc:main/crafter/

## レシピデータを削除
	execute if data entity @s data.Using.Recipe run data remove storage hd.rc:temp ItemsCopy[{Slot:15b}]
	execute if data entity @s data.Using.Recipe run data remove entity @s data.Using.Recipe
## アイテムを返す
	data remove storage hd.rc:temp ItemsCopy[{tag:{HdRc:{}}}]
	execute if data storage hd.rc:temp ItemsCopy[] run data modify storage hd.rc:lib ReturnItems set from storage hd.rc:temp ItemsCopy
	execute if data storage hd.rc:temp ItemsCopy[] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## レシピブックを生成
	execute unless data storage hd.rc:recipe_book _[] positioned ~ -3000 ~ run function hd.rc:main/recipe_book/page/make/
## ページを設定
	scoreboard players set @s HdRc.Page 1
## レシピブックを挿入
	function hd.rc:main/recipe_book/page/change/
## レシピアイテムSlotを削除
	loot replace block ~ ~ ~ container.14 loot hd.rc:gui/recipe_book/close.recipe_book
	item replace block ~ ~ ~ container.6 with minecraft:air
	item replace block ~ ~ ~ container.7 with minecraft:air
	item replace block ~ ~ ~ container.8 with minecraft:air
	item replace block ~ ~ ~ container.15 with minecraft:air
	item replace block ~ ~ ~ container.16 with minecraft:air
	item replace block ~ ~ ~ container.17 with minecraft:air
	item replace block ~ ~ ~ container.24 with minecraft:air
	item replace block ~ ~ ~ container.25 with minecraft:air
	item replace block ~ ~ ~ container.26 with minecraft:air
## データを保存
	data modify block ~ ~ ~ Items append from entity @s data.Using.RecipeBook[]
