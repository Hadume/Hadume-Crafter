#> hd.rc:lib/compare.item/reset
#
# 
#
# @input
#   storage hd.rc:lib ComparedItem1
#   storage hd.rc:lib ComparedItem2
# @output
#   score_holder $HdRc.Lib.Different
# @internal

#> ScoreHolder
# @internal
 #declare score_holder $HdRc.lib.Different
## 
	execute if data storage hd.rc:lib ComparedItem1 run data remove storage hd.rc:lib ComparedItem1
	execute if data storage hd.rc:lib ComparedItem2 run data remove storage hd.rc:lib ComparedItem2
	execute if data storage hd.rc:lib TagsCopy run data remove storage hd.rc:lib TagsCopy

	execute if data storage hd.rc:lib RemoveDisplay run data remove storage hd.rc:lib RemoveDisplay
	execute if data storage hd.rc:lib RemoveDamage run data remove storage hd.rc:lib RemoveDamage
	execute if data storage hd.rc:lib SameCount run data remove storage hd.rc:lib SameCount
## 
	execute if score $HdRc.lib.Different HdRc.Temp matches 1 run scoreboard players reset $HdRc.lib.Different
	execute if score $HdRc.Count.1 HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Count.1
	execute if score $HdRc.Count.2 HdRc.Temp matches ..2147483647 run scoreboard players reset $HdRc.Count.2
