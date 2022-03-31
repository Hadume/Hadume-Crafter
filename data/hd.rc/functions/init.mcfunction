#> hd.rc:init
#
# 初期化
#
# @within function hd.rc:load

#> Storage
# @internal
# @within function hd.rc.asset:**
 #declare storage hd.rc:
 #declare storage hd.rc.asset:tags
#> Storage
# @internal
 #declare storage hd.rc:temp
 #declare storage hd.rc:lib
 #declare storage hd.rc:recipe_book
 #declare storage hd.rc.asset:recipes
#> Tags
# @internal
 #declare tag HdRc
 #declare tag HdRcThis
## 初期化完了
	data modify storage hd.rc: Init set value 1b
#> Scoreboard
# @internal
	scoreboard objectives add HdRc.Temp dummy
	scoreboard objectives add HdRc.Global dummy
	scoreboard objectives add HdRc.Page dummy
	scoreboard objectives add HdRc.ID dummy
## Gamerule
	gamerule maxCommandChainLength 2147483647
## Storage
	### レシピ
		data modify storage hd.rc.asset:recipes _ set value [[],[],[],[],[],[],[],[],[]]
	### Tag
		data remove storage hd.rc.asset:tags _
	### チャット時の名前
		data modify storage hd.rc: tellrawName set value "[システム]"
	### 仮要素
		data modify storage hd.rc: Blank set value [{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b}]
## レシピを追加
	function #hd.rc.asset:recipes
	function #hd.rc.asset:tags
	function hd.rc:add.recipes/
