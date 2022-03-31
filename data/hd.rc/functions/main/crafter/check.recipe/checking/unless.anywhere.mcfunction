#> hd.rc:main/crafter/check.recipe/checking/unless.anywhere
#
# Anywhereが無かったら
#
# @within function hd.rc:main/crafter/check.recipe/checking/loop

## 縦軸に鏡写し
	execute if data storage hd.rc:temp RecipesCopy[-1].Options.Mirror_VERT run function hd.rc:main/crafter/check.recipe/mirror/vert/
## 横軸に鏡写し
	execute unless data storage hd.rc:temp RecipesCopy[-1].Options.Mirror_VERT if data storage hd.rc:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.rc:main/crafter/check.recipe/mirror/hor/
## 普通
	execute unless data storage hd.rc:temp RecipesCopy[-1].Options.Mirror_VERT unless data storage hd.rc:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.rc:main/crafter/check.recipe/normal.loop
