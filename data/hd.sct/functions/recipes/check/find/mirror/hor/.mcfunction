#> hd.sct:recipes/check/find/mirror/hor/
#
# 横軸の鏡写し
#
# @within function hd.sct:recipes/check/find/loop

## データを移しておく
	data modify storage hd.sct:temp RecipeItems set from storage hd.sct:temp RecipesCopy[-1].Items
## 通常の確認
	function hd.sct:recipes/check/find/normal.loop
## 違ったら、横軸に鏡写しをする
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run function hd.sct:recipes/check/find/mirror/hor/move
