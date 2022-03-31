#> hd.rc:main/crafter/check.recipe/mirror/vert/
#
# 縦軸に鏡写し
#
# @within function
#   hd.rc:main/crafter/check.recipe/checking/unless.anywhere
#   hd.rc:main/crafter/check.recipe/mirror/vert/corner

## データを移動
	data modify storage hd.rc:temp RecipeItems set from storage hd.rc:temp RecipesCopy[-1].Items
## レシピを確認
	function hd.rc:main/crafter/check.recipe/normal.loop
## 違ったら、鏡写し
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run function hd.rc:main/crafter/check.recipe/mirror/vert/move
