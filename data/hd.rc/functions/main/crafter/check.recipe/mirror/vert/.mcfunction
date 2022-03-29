#> hd.rc:main/crafter/check.recipe/mirror/vert/
#
# 縦軸の鏡写し
#
# @within function
#   hd.rc:main/crafter/check.recipe/checking/unless.anywhere
#   hd.rc:main/crafter/check.recipe/mirror/vert/corner

## データを移しておく
	data modify storage hd.rc:temp RecipeItems set from storage hd.rc:temp RecipesCopy[-1].Items
## 通常の確認
	function hd.rc:main/crafter/check.recipe/normal.loop
## 違ったら、縦軸に鏡写しをする
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run function hd.rc:main/crafter/check.recipe/mirror/vert/move
