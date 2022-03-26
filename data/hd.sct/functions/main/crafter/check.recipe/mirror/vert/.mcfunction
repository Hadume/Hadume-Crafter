#> hd.sct:main/crafter/check.recipe/mirror/vert/
#
# 縦軸の鏡写し
#
# @within function
#   hd.sct:main/crafter/check.recipe/checking/unless.anywhere
#   hd.sct:main/crafter/check.recipe/mirror/vert/corner

## データを移しておく
	data modify storage hd.sct:temp RecipeItems set from storage hd.sct:temp RecipesCopy[-1].Items
## 通常の確認
	function hd.sct:main/crafter/check.recipe/normal.loop
## 違ったら、縦軸に鏡写しをする
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run function hd.sct:main/crafter/check.recipe/mirror/vert/move
