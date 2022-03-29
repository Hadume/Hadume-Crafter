#> hd.rc:block/set/
#
# 特殊作業台を設置
#
# @within function hd.rc:tick

#> Tags
# @within function hd.rc:block/set/*
 #declare tag HdSctNew
#> ScoreHolder
# @private
 #declare score_holder $HdRc.ID
## 樽の中のアイテムを返す
	execute if data block ~ ~ ~ Items[] run data modify storage hd.rc:lib ReturnItems set from block ~ ~ ~ Items
	execute if data block ~ ~ ~ Items[] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## 樽の向きを変える
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run setblock ~ ~ ~ minecraft:barrel[facing=up]
## 
	execute if data entity @s {Item:{id:"minecraft:crafting_table"}} run function hd.rc:block/set/sct
	execute if data entity @s {Item:{id:"minecraft:command_block"}} run function hd.rc:block/set/recipe_maker
## IDを渡す
	scoreboard players add $HdRc.ID HdRc.Global 1
	scoreboard players operation @e[type=#hd.rc:sct,tag=HdSctNew,distance=..0.001] HdRc.ID = $HdRc.ID HdRc.Global
## 「額縁」か「輝く額縁」のどっちを使ったか記録
	execute store success entity @e[type=minecraft:marker,tag=HdSctNew,distance=..0.001,limit=1] data.ItemFrame byte 1 if entity @s[type=minecraft:item_frame]
## からTagを外す
	tag @e[type=#hd.rc:sct,tag=HdSctNew,distance=..0.001] remove HdSctNew
## 額縁を消す
	kill @s
## 音
	playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
## パーティクル
	particle minecraft:end_rod ~ ~ ~ 0 0 0 0.125 100
