#> hd.sct:init
#
# 初期化
#
# @within function hd.sct:load

#> Storage
# @internal
 #declare storage hd.sct:
## 初期化完了
	#data modify storage hd.sct: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdSct.Mined.Barrel minecraft.mined:minecraft.barrel
## Storage
	### 特殊作業台UI
		data modify storage hd.sct: SCT.Items set value [{Slot:0b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:4b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:5b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:6b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:7b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:8b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:9b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:13b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:16b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:17b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:18b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:22b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:23b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:24b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:25b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}},{Slot:26b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'},HdSctItem:1b}}]
	### 特殊作業台の名前
		data modify storage hd.sct: SCT.Name set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"特殊クラフト"}]'
