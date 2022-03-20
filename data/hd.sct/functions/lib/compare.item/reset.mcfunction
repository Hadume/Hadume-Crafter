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
	execute if data storage hd.sct:lib ComparedItem1 run data remove storage hd.sct:lib ComparedItem1
	execute if data storage hd.sct:lib ComparedItem2 run data remove storage hd.sct:lib ComparedItem2
	execute if data storage hd.sct:lib TagsCopy run data remove storage hd.sct:lib TagsCopy
	execute if data storage hd.sct:lib RemoveElements run data remove storage hd.sct:lib RemoveElements
## 
	execute if score $HdSct.lib.Different HdSct.Temp matches 1 run scoreboard players reset $HdSct.lib.Different
	execute if score $HdSct.Count.1 HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.Count.1
	execute if score $HdSct.Count.2 HdSct.Temp matches ..2147483647 run scoreboard players reset $HdSct.Count.2
