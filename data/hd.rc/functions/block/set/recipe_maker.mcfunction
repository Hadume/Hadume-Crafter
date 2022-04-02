#> hd.rc:block/set/recipe_maker
#
# RMを設定
#
# @within function hd.rc:block/set/

#> Tags
# @private
# @within function
#   hd.rc:main/changed.items/
#   hd.rc:main/ui/
#   hd.rc:main/crafter/repair.gui
 #declare tag HdRcRM
## 名前
	data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"レシピメーカー"}]'
## 本体
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdRc","HdRcNew","HdRcRM"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
	summon minecraft:marker ~ ~ ~ {Tags:["HdRc","HdRcNew","HdRcRM"]}
