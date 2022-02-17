#> hd.sct:sct/changed.items/
#
# SCTの中身が変ってたら
#
# @within function hd.sct:sct/using

#> ScoreHolder
# @private
 #declare score_holder $HdSct.Changed
## 特殊作業台のどのアイテムが変ったか検知するための準備
	data modify storage hd.sct:temp ItemsCopy set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Items
## 素材アイテムを減らすか確認
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run function hd.sct:sct/changed.items/remove.material/check
## 特殊作業台のどのGUIのアイテムが変っていたら
	execute store result score $HdSct.Changed HdSct.Temp if data storage hd.sct:temp ItemsCopy[{tag:{HdSct:1b}}]
	execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe run scoreboard players add $HdSct.Changed HdSct.Temp 1
	execute unless score $HdSct.Changed HdSct.Temp matches 18 if data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSctRecipeBook:1b}}] run function hd.sct:sct/changed.items/repair.gui/
	#execute unless score $HdSct.Changed HdSct.Temp matches 18 unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSctRecipeBook:1b}}] run function hd.sct:recipe/book/open
	execute unless score $HdSct.Changed HdSct.Temp matches 18 unless data storage hd.sct:temp ItemsCopy[{Slot:9b,tag:{HdSctRecipeBook:1b}}] run function hd.sct:sct/changed.items/repair.gui/
## 特殊作業台のGUIが変っていなかったら、レシピの確認
	execute if score $HdSct.Changed HdSct.Temp matches 18 run function hd.sct:recipes/check/
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Changed
## 一時使用Storageをリセット
	data remove storage hd.sct:temp ItemsCopy
