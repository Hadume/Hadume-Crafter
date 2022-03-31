#> hd.rc:block/set/
#
# 特殊作業台を設置
#
# @within function hd.rc:tick

#> Tags
# @within function hd.rc:block/set/*
 #declare tag HdRcNew
#> ScoreHolder
# @private
 #declare score_holder $HdRc.ID
## 樽の中のアイテムを返す
	execute if data block ~ ~ ~ Items[] run data modify storage hd.rc:lib ReturnItems append from block ~ ~ ~ Items[]
	execute if data block ~ ~ ~ Items[] positioned ~ ~1 ~ run function hd.rc:lib/return.items/
## 樽の向きを変える
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run setblock ~ ~ ~ minecraft:barrel[facing=up]
## RC か RMを設定
	execute if data entity @s {Item:{id:"minecraft:crafting_table"}} run function hd.rc:block/set/sct
	execute if data entity @s {Item:{id:"minecraft:command_block"}} run function hd.rc:block/set/recipe_maker
## IDを渡す
	scoreboard players add $HdRc.ID HdRc.Global 1
	scoreboard players operation @e[type=#hd.rc:sct,tag=HdRcNew,distance=..0.001] HdRc.ID = $HdRc.ID HdRc.Global
## 額縁 か 輝く額縁のどちらを使ったかを保存
	execute store success entity @e[type=minecraft:marker,tag=HdRcNew,distance=..0.001,limit=1] data.ItemFrame byte 1 if entity @s[type=minecraft:item_frame]
## Tagを外す
	tag @e[type=#hd.rc:sct,tag=HdRcNew,distance=..0.001] remove HdRcNew
## 額縁を消す
	kill @s
## 音
	playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
