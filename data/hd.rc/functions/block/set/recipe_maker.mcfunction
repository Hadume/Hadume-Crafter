#> hd.rc:block/set/recipe_maker
#
# 
#
# @within function hd.rc:block/set/

#> Tags
# @private
# @within function
#   hd.rc:main/using
#   hd.rc:main/ui/
#   hd.rc:main/crafter/repair.gui
 #declare tag HdSctRM
## 
	data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"れしぴ"}]'
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdRc","HdSctNew","HdSctRM"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
	summon minecraft:marker ~ ~ ~ {Tags:["HdRc","HdSctNew","HdSctRM"]}
