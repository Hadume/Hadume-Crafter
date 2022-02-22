#> hd.sct:sct/changed.items/remove.material/check
#
# 素材アイテムを減らすか確認
#
# @within function hd.sct:sct/changed.items/not.recipe_book

#> ScoreHolder
# @private
 #declare score_holder $HdSct.Compare
## 完成アイテムがなかったら
	execute unless data storage hd.sct:temp ItemsCopy[{Slot:15b}] run data modify storage hd.sct:temp ItemsCopy append value {Slot:15b}
## 完成アイテムを重ねる
	execute store success score $HdSct.Compare HdSct.Temp run data modify storage hd.sct:temp ItemsCopy[{Slot:15b}] set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HdSct.Using.Recipe.Complete
## 素材アイテムを減らす
	execute if score $HdSct.Compare HdSct.Temp matches 1 run function hd.sct:sct/changed.items/remove.material/main
## 一時使用ScoreHolderをリセット
	scoreboard players reset $HdSct.Compare
