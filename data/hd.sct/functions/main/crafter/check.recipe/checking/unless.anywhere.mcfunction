#> hd.sct:main/crafter/check.recipe/checking/unless.anywhere
#
# 
#
# @within function hd.sct:main/crafter/check.recipe/checking/loop

## 
	execute if data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_VERT run function hd.sct:main/crafter/check.recipe/mirror/vert/
	execute unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_VERT if data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.sct:main/crafter/check.recipe/mirror/hor/
	execute unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_VERT unless data storage hd.sct:temp RecipesCopy[-1].Options.Mirror_HOR run function hd.sct:main/crafter/check.recipe/normal.loop
