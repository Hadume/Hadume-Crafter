#> hd.sct:block/set/
#
# 特殊作業台を設置
#
# @within function hd.sct:tick

#> Tags
# @private
 #declare tag New.AS
## 樽の中のアイテムを返す
	execute if data block ~ ~ ~ Items[] positioned ~ ~1 ~ run function hd.sct:block/set/take.items
## 樽の向きを変える
	execute unless block ~ ~ ~ minecraft:barrel[facing=up] run setblock ~ ~ ~ minecraft:barrel[facing=up]
## 特殊作業台UIを作る
	loot replace block ~ ~ ~ container.0 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.4 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.5 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.6 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.7 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.8 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.9 loot hd.sct:gui/recipe_book
	loot replace block ~ ~ ~ container.13 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.14 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.15 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.16 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.17 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.18 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.22 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.23 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.24 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.25 loot hd.sct:gui/air
	loot replace block ~ ~ ~ container.26 loot hd.sct:gui/air
## 特殊作業台の名前
	execute if data storage hd.sct: SCT.Name run data modify block ~ ~ ~ CustomName set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"特殊クラフト"}]'
## ASを召喚
	summon minecraft:armor_stand ~ ~ ~ {Tags:["HdSct","New.AS"],Invisible:1b,Marker:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:crafting_table",Count:1b,tag:{Enchantments:[{id:"",lvl:1s}]}}]}
## 個人ストレージを呼ぶ
	execute as @e[type=minecraft:armor_stand,tag=New.AS,distance=..0.001] run function #oh_my_dat:please
## 「額縁」か「輝く額縁」のどっちを使ったか記録
	execute store success storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.ItemFrame byte 1 if entity @s[type=minecraft:item_frame]
## ASからTagを外す
	tag @e[type=minecraft:armor_stand,tag=New.AS,distance=..0.001] remove New.AS
## 額縁を消す
	kill @s
## 音
	playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
## パーティクル
	particle minecraft:end_rod ~ ~ ~ 0 0 0 0.125 100
