#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/anywhere/loop
#
# レシピ確認(アイテムさえあってればどこにあってもいい)
#
# @within function hd.sct:sct/changed.items/check.recipe/2/find.recipe/anywhere/
# @private

say どこでもloop

## データを移しておく
	data modify storage hd.sct:temp ItemStash set from storage hd.sct:temp RecipesCopy[-1].Items[-10]
## 同じアイテムか確認
#tellraw @a {"storage":"hd.sct:temp","nbt":"ItemsCopy"}
#tellraw @a {"storage":"hd.sct:temp","nbt":"RecipesCopy[-1].Items"}
	function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/id/
## アイテムが違ったら、データを戻しておく
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run data modify storage hd.sct:temp RecipesCopy[-1].Items[-10] set from storage hd.sct:temp ItemStash
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run data remove storage hd.sct:temp RecipesCopy[-1].Items[-1]
## アイテムが同じだったら、データを移しておく
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 0 run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/anywhere/move
#tellraw @a {"storage":"hd.sct:temp","nbt":"ItemsCopy"}
#tellraw @a {"storage":"hd.sct:temp","nbt":"RecipesCopy[-1].Items"}
	tellraw @a {"score":{"name": "$HdSct.Same.Recipe","objective": "HdSct.Temp"}}
## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Items[-10] run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/anywhere/loop
