#> hd.sct:lib/compare.item/reset
#
# 
#
# @input
#   storage hd.sct:lib ComparedItem1
#   storage hd.sct:lib ComparedItem2
# @output
#   score_holder $HdSct.Lib.Different
# @internal

#> ScoreHolder
# @internal
 #declare score_holder $HdSct.lib.Different
## 
	data remove storage hd.sct:lib ComparedItem1
	data remove storage hd.sct:lib ComparedItem2
## 
	scoreboard players reset $HdSct.lib.Different
	scoreboard players reset $HdSct.Count.1
	scoreboard players reset $HdSct.Count.2
