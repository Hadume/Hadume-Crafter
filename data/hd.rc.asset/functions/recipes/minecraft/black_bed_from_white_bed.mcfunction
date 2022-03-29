#> hd.rc.asset:recipes/minecraft/black_bed_from_white_bed
# @within tag/function hd.rc.asset:recipes

	data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,id:"minecraft:white_bed",Count:1b},{Slot:2b,id:"minecraft:black_dye",Count:1b}],Result:{id:"minecraft:black_bed",Count:1b},Options:{Anywhere:1b},Tags:["minecraft:black_bed_from_white_bed"]}
