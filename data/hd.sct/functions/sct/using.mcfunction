#> hd.sct:sct/using
#
# 使っていたら
#
# @within function hd.sct:sct/tick

#> ScoreHolder
# @private
 #declare score_holder $HdSct.ChangedItems
## 鍵をかける
	execute if entity @s[tag=!HdSct.Using] run function hd.sct:block/lock/
## 個人ストレージを呼ぶ
	function #oh_my_dat:please
## SCTの中身が変ったか確認
	execute store success score $HdSct.ChangedItems HdSct.Temp run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items set from block ~ ~ ~ Items
	execute if score $HdSct.ChangedItems HdSct.Temp matches 1 run function hd.sct:sct/changed.items/
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.ChangedItems
