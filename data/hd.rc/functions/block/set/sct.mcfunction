#> hd.rc:block/set/sct
#
# 
#
# @within function hd.rc:block/set/

## 
	data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"特殊クラフト"}]'
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdRc","HdSctNew"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
	summon minecraft:marker ~ ~ ~ {Tags:["HdRc","HdSctNew"]}
