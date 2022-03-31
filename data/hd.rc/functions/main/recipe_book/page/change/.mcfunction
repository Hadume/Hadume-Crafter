#> hd.rc:main/recipe_book/page/change/
#
# ページを変更
#
# @within function
#   hd.rc:main/recipe_book/page/change/**
#   hd.rc:main/recipe_book/open

## ページを探す
	function hd.rc:main/recipe_book/page/find/
## ページを上書き
	execute if data storage hd.rc:temp PageCopy[] run data modify entity @s data.Using.RecipeBook set from storage hd.rc:temp PageCopy[0].Data
## レシピアイテムSlotを削除
	execute if data storage hd.rc:temp PageCopy[] run function hd.rc:main/recipe_book/air
## ガイドを表示
	execute unless data storage hd.rc:recipe_book NotYet[] if data storage hd.rc:temp PageCopy[-2] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/next
	execute unless data storage hd.rc:recipe_book NotYet[] unless data storage hd.rc:temp PageCopy[-2] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/cant.next
	execute if data storage hd.rc:recipe_book NotYet[] run loot replace block ~ ~ ~ container.23 loot hd.rc:gui/recipe_book/next

	execute if entity @s[scores={HdRc.Page=2..}] run loot replace block ~ ~ ~ container.5 loot hd.rc:gui/recipe_book/prev
	execute if entity @s[scores={HdRc.Page=1}] run loot replace block ~ ~ ~ container.5 loot hd.rc:gui/recipe_book/cant.prev
## データを削除
	execute if data storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}] run data remove storage hd.rc:temp RecipesCopy[{tag:{HdRc:{Recipe:{Selected:1b}}}}].tag.HdRc.Recipe.Selected
## データを削除
	execute if data entity @s data.Using.RecipeBookTag run data remove entity @s data.Using.RecipeBookTag
