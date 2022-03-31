#> hd.rc:block/set/sct
#
# RCを設定
#
# @within function hd.rc:block/set/

## 名前
	data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"ラクラ・クラフター"}]'
## 本体
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdRc","HdRcNew"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
	summon minecraft:marker ~ ~ ~ {Tags:["HdRc","HdRcNew"]}
