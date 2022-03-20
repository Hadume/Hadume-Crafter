#> hd.sct:block/set/recipe_maker
#
# 
#
# @within function hd.sct:block/set/

#> Tags
# @private
# @within function
#   hd.sct:sct/using
#   hd.sct:block/ui/
#   hd.sct:sct/changed.items/repair.gui
 #declare tag HdSctRM
## 
	data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"れしぴ"}]'
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdSct","HdSctNew","HdSctRM"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
	summon minecraft:marker ~ ~ ~ {Tags:["HdSct","HdSctNew","HdSctRM"]}
