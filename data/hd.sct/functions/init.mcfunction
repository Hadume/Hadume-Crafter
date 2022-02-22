#> hd.sct:init
#
# 初期化
#
# @within function hd.sct:load

#> Storage
# @internal
# @within function hd.sct.asset:**
 #declare storage hd.sct:
#> Storage
# @internal
 #declare storage hd.sct:temp
 #declare storage hd.sct:lib
 #declare storage hd.sct:recipe_book
 #declare storage hd.sct.asset:recipes
 #declare storage hd.sct.asset:tags
#> Tags
# @internal
 #declare tag HdSctThis
## 初期化完了
	data modify storage hd.sct: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdSct.Temp dummy
	scoreboard objectives add HdSct.Global dummy
	scoreboard objectives add HdSct.Page dummy
	scoreboard objectives add HdSct.ID dummy
## Gamerule
	gamerule maxCommandChainLength 2147483647
## Storage
	### レシピ
		data modify storage hd.sct.asset:recipes _ set value [[],[],[],[],[],[],[],[],[]]
	### チャット時の名前
		data modify storage hd.sct: tellrawName set value "[システム]"
	### 仮アイテム
		data modify storage hd.sct: Blank set value [{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b}]
## レシピ追加
	function #hd.sct.asset:recipes
