#> hd.sct:sct/changed.items/recipe_book/prev
#
# 
#
# @within function hd.sct:sct/changed.items/recipe_book/

## ページを増やす
	execute if score @s HdSct.Page matches 2.. run scoreboard players remove @s HdSct.Page 1
## ページを探す
	function hd.sct:recipes/book/find/
## ページがあったら、上書き
	execute if data storage hd.sct:temp PageCopy[] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.RecipeBook set from storage hd.sct:temp PageCopy[0].Data
## ページが無かったら、スコアを減らす
	execute unless data storage hd.sct:temp PageCopy[] run scoreboard players remove @s HdSct.Page 1
## アイテム
	execute if data storage hd.sct:temp PageCopy[-2] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/next
	execute unless data storage hd.sct:temp PageCopy[-2] run loot replace block ~ ~ ~ container.23 loot hd.sct:gui/recipe_book/cant.next
	execute if score @s HdSct.Page matches 2.. run loot replace block ~ ~ ~ container.5 loot hd.sct:gui/recipe_book/prev
	execute if score @s HdSct.Page matches 1 run loot replace block ~ ~ ~ container.5 loot hd.sct:gui/recipe_book/cant.prev
