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
		data modify storage hd.sct: SCT.Items set value [{Slot:0b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:4b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:5b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:6b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:7b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:8b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:9b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:13b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:14b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:16b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:17b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:18b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:22b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:23b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:24b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:25b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}},{Slot:26b,id:"minecraft:light_gray_stained_glass_pane",Count:1b,tag:{display:{Name:'{"text":""}'}}}]
	### 特殊作業台の名前
		data modify storage hd.sct: SCT.Name set value '[{"text":""},{"text":"\\u0020\\u0020\\u0020\\u0020.","color":"gray"},{"text":"特殊クラフト"}]'
