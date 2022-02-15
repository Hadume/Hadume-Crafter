#> hd.sct:id
#
# プレイヤーにIDを与える
#
# @within advancement hd.sct:id

#> ScoreHolder
# @private
 #declare score_holder $HdSct.ID
## 
	execute store result score @s HdSct.ID run scoreboard players add $HdSct.ID HdSct.ID 1
