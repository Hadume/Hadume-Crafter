#> hd.sct:init
#
# 初期化
#
# @within function hd.sct:load

#> Storage
# @internal
 #declare storage hd.sct:
 #declare storage hd.sct:temp
 #declare storage hd.sct:lib
 #declare storage hd.sct.asset:recipes
## 初期化完了
	#data modify storage hd.sct: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdSct.Temp dummy
## Gamerule
	gamerule maxCommandChainLength 2147483647
## Storage
	### レシピ
		data modify storage hd.sct.asset:recipes _ set value [[],[],[],[],[],[],[],[],[]]
	### チャット時の名前
		data modify storage hd.sct: SCT.tellrawName set value "[システム]"
