#> hd.sct:sct/changed.items/remove.material/main
#
# 素材アイテムを減らす
#
# @within function
#   hd.sct:sct/changed.items/remove.material/check
#   hd.sct:sct/changed.items/shift.click/

#> ScoreHolder
# @within hd.sct:sct/changed.items/remove.material/*
 #declare score_holder $HdSct.Count.1
 #declare score_holder $HdSct.Count.2
## 特殊作業台内のアイテムのコピー
	execute if data storage hd.sct:temp ItemsCopy[{Slot:1b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:1b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:2b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:2b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:3b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:3b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:10b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:10b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:11b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:11b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:12b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:12b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:19b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:19b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:20b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:20b}]
	execute if data storage hd.sct:temp ItemsCopy[{Slot:21b}] run data modify storage hd.sct:temp Materials append from storage hd.sct:temp ItemsCopy[{Slot:21b}]
## 素材アイテムに仮アイテムを追加する
	data modify storage hd.sct:temp Materials append from storage hd.sct: Blank[]
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Items append from storage hd.sct: Blank[]
## アイテムのCountを減らす
	function hd.sct:sct/changed.items/remove.material/loop
## 仮データを消す
	data remove storage hd.sct:temp Materials[{_:1b}]
## 特殊作業台の中のアイテムを上書きする
	data modify block ~ ~ ~ Items append from storage hd.sct:temp Materials[]
## 個人ストレージ内の特殊作業台の中のアイテムを上書きする
	data modify storage hd.sct:temp ItemsCopy set from block ~ ~ ~ Items
## 一時使用Storageのリセット
	data remove storage hd.sct:temp Materials
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Count.1
	scoreboard players reset $HdSct.Count.2
## 
	item replace entity @s weapon.mainhand with minecraft:air
