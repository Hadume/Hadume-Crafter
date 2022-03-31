#> hd.rc:main/recipe_book/page/change/next/make.page
#
# ページを作成
#
# @within function hd.rc:main/recipe_book/page/change/next/

## やっぱ、ページ作っちゃうも～～ん
	execute positioned ~ -3000 ~ run function hd.rc:main/recipe_book/page/make/
## データを保存
	data modify entity @s data.Using.RecipeBook set from storage hd.rc:recipe_book _[-1].Data
## ガイドを表示
	execute unless data storage hd.rc:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/cant.next
	execute if data storage hd.rc:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/next
## レシピアイテムSlotを削除
	function hd.rc:main/recipe_book/air
