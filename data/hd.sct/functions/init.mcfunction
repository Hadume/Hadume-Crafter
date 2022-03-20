#> hd.sct:init
#
# 初期化
#
# @within function hd.sct:load

#> Storage
# @internal
# @within function hd.sct.asset:**
 #declare storage hd.sct:
 #declare storage hd.sct.asset:tags
#> Storage
# @internal
 #declare storage hd.sct:temp
 #declare storage hd.sct:lib
 #declare storage hd.sct:recipe_book
 #declare storage hd.sct.asset:recipes
#> Tags
# @within function
#   hd.sct:tick
#   hd.sct:block/***
#   hd.sct:sct/changed.items/remove.material/*
#   hd.sct:sct/inventory_changed
#   hd.sct:sct/changed.items/shift.click/
#   hd.sct:sct/changed.items/shift.click/as
#   hd.sct:sct/changed.items/shift.click/above.65/
#   hd.sct:sct/changed.items/shift.click/above.65/adjust.count
#   hd.sct:sct/changed.items/shift.click/above.65/set.count.loop1
#   hd.sct:sct/add.recipe/check
#   hd.sct:sct/add.recipe/export
 #declare tag HdSct
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
	### 仮要素
		data modify storage hd.sct: Blank set value [{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b},{_:1b}]
## レシピ追加
	function #hd.sct.asset:recipes
	function #hd.sct.asset:tags
	function hd.sct:recipes/add/
