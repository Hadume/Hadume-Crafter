#> hd.rc.asset:recipes/minecraft/green_bed_from_white_bed
# @within tag/function hd.rc.asset:recipes

	data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,id:"minecraft:white_bed",Count:1b},{Slot:2b,id:"minecraft:green_dye",Count:1b}],Result:{id:"minecraft:green_bed",Count:1b},Options:{Anywhere:1b},Tags:["minecraft:green_bed_from_white_bed"]}
