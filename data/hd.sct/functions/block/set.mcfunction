#> hd.sct:block/set
#
# 特殊作業台を設置
#
# @within function hd.sct:tick

#> Tags
# @internal
 #declare tag HdSctStorage
#> Tags
# @private
 #declare tag HdSctNew
#> ScoreHolder
# @private
 #declare score_holder $HdSct.ID
## 樽の中のアイテムを返す
	execute if data block ~ ~ ~ Items[] run data modify storage hd.sct:lib ReturnItems set from block ~ ~ ~ Items
	execute if data block ~ ~ ~ Items[] positioned ~ ~1 ~ run function hd.sct:lib/return.items/
## 樽の向きを変える
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run setblock ~ ~ ~ minecraft:barrel[facing=up]
## 特殊作業台の名前
	execute if data entity @s {Item:{id:"minecraft:crafting_table"}} run data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"特殊クラフト"}]'
	execute if data entity @s {Item:{id:"minecraft:command_block"}} run data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"れしぴ"}]'
## ASを召喚
	execute if data entity @s {Item:{id:"minecraft:crafting_table"}} run summon minecraft:armor_stand ~ ~ ~ {Tags:["HdSct","HdSctNew"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
	execute if data entity @s {Item:{id:"minecraft:command_block"}} run summon minecraft:armor_stand ~ ~ ~ {Tags:["HdSct","HdSctNew","HdSct.Recipe"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
## 
	summon minecraft:marker ~ ~ ~ {Tags:["HdSctStorage","HdSctNew"]}
## IDを渡す
	scoreboard players add $HdSct.ID HdSct.Global 1
	scoreboard players operation @e[type=#hd.sct:sct,tag=HdSctNew,distance=..0.001] HdSct.ID = $HdSct.ID HdSct.Global
## 「額縁」か「輝く額縁」のどっちを使ったか記録
	execute store success entity @e[type=minecraft:marker,tag=HdSctStorage,tag=HdSctNew,distance=..0.001,limit=1] data.ItemFrame byte 1 if entity @s[type=minecraft:item_frame]
## からTagを外す
	tag @e[type=#hd.sct:sct,tag=HdSctNew,distance=..0.001] remove HdSctNew
## 額縁を消す
	kill @s
## 音
	playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
## パーティクル
	particle minecraft:end_rod ~ ~ ~ 0 0 0 0.125 100
