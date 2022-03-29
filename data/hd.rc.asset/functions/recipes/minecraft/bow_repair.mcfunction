#> hd.rc.asset:recipes/minecraft/bow_repair
# @within tag/function hd.rc.asset:recipes

	data modify storage hd.rc: AddRecipes append value {Items:[{Slot:1b,id:"minecraft:bow",Count:1b,Options:{IgnoreDamage:1b}},{Slot:2b,id:"minecraft:bow",Count:1b,Options:{IgnoreDamage:1b}}],Result:{id:"minecraft:bow",Count:1b},Options:{Anywhere:1b,RepairItem:1b},Tags:["minecraft:bow_repair"]}
