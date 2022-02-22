#> hd.sct:block/set
#
# 特殊作業台を設置
#
# @within function hd.sct:tick

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
## 特殊作業台UIを作る
	function hd.sct:block/ui
## 特殊作業台の名前
	execute if data storage hd.sct: SCT.Name run data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"特殊クラフト"}]'
## ASを召喚
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdSct","HdSctNew"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
## 個人ストレージを呼ぶ
	execute as @e[type=minecraft:armor_stand,tag=HdSctNew,distance=..0.001] run function #oh_my_dat:please
## 「額縁」か「輝く額縁」のどっちを使ったか記録
	execute store success storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.ItemFrame byte 1 if entity @s[type=minecraft:item_frame]
## IDを渡す
	execute store result score @e[type=minecraft:armor_stand,tag=HdSctNew,distance=..0.001] HdSct.ID run scoreboard players add $HdSct.ID HdSct.Global 1
## ASからTagを外す
	tag @e[type=minecraft:armor_stand,tag=HdSctNew,distance=..0.001] remove HdSctNew
## 額縁を消す
	kill @s
## 音
	playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
## パーティクル
	particle minecraft:end_rod ~ ~ ~ 0 0 0 0.125 100
