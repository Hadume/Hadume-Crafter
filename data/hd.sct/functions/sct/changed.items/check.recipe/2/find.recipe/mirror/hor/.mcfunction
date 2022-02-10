#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/mirror/hor/
#
# 横軸の鏡写し
#
# @within function hd.sct:sct/changed.items/check.recipe/2/find.recipe/loop
say レシピ確認(HOR)

## データを移しておく
	data modify storage hd.sct:temp RecipeItems set from storage hd.sct:temp RecipesCopy[-1].Items
## 通常の確認
	function hd.sct:sct/changed.items/check.recipe/2/find.recipe/normal.loop
## 違ったら、横軸に鏡写しをする
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/mirror/hor/move
