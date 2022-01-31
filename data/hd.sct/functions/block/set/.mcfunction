#> hd.sct:block/set/
#
# 特殊作業台を設置
#
# @within function hd.sct:tick

## 樽の中のアイテムを返す
	execute if data block ~ ~-1 ~ Items[] run function hd.sct:block/set/take.items
## 樽の向きを変える
	execute unless block ~ ~-1 ~ minecraft:barrel[facing=up] run setblock ~ ~-1 ~ minecraft:barrel[facing=up]
## 特殊作業台UI
	execute if data storage hd.sct: SCT.Items[] run data modify block ~ ~-1 ~ Items append from storage hd.sct: SCT.Items[]
	data modify block ~ ~-1 ~ Items append value {Slot:15b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}}
## 特殊作業台の名前
	execute if data storage hd.sct: SCT.Name run data modify block ~ ~-1 ~ CustomName set from storage hd.sct: SCT.Name
## ASを召喚
	summon minecraft:armor_stand ~ ~-1 ~ {Tags:["HdSct"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
## 額縁を消す
	kill @s
## 音
	playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
## パーティクル
	particle minecraft:end_rod ^ ^ ^1 0 0 0 0.125 100
