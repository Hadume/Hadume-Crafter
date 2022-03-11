#> hd.sct:sct/changed.items/recipe_book/tag/
#
# レシピのTagを表示
#
# @within function hd.sct:sct/using

## カウントを減らす
	execute store result entity @s data.Using.RecipeBookTag.Count byte 0.9999999 run data get entity @s data.Using.RecipeBookTag.Count
## Tagを更新
	execute if data entity @s {data:{Using:{RecipeBookTag:{Count:0b}}}} run function hd.sct:sct/changed.items/recipe_book/tag/update
