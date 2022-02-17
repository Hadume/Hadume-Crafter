#> hd.sct:recipes/check/find/mirror/vert/
#
# 縦軸の鏡写し
#
# @within function hd.sct:recipes/check/find/loop

## データを移しておく
	data modify storage hd.sct:temp RecipeItems set from storage hd.sct:temp RecipesCopy[-1].Items
## 通常の確認
	function hd.sct:recipes/check/find/normal.loop
## 違ったら、縦軸に鏡写しをする
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 1 run function hd.sct:recipes/check/find/mirror/vert/move
