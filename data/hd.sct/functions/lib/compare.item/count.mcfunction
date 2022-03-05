#> hd.sct:lib/compare.item/count
#
# Countが同じか確認
#
# @internal

#> ScoreHolder
# @private
# @within function hd.sct:lib/compare.item/reset
 #declare score_holder $HdSct.Count.1
 #declare score_holder $HdSct.Count.2
## Countを取得
	execute store result score $HdSct.Count.1 HdSct.Temp run data get storage hd.sct:temp ItemsCopy[-10].Count
	execute store result score $HdSct.Count.2 HdSct.Temp run data get storage hd.sct:temp RecipesCopy[-1].Items[-10].Count
## Countを比較する(今回はfalseがOK判定なので、不等号の向きが逆でOK)
	execute store success score $HdSct.lib.Different HdSct.Temp if score $HdSct.Count.1 HdSct.Temp < $HdSct.Count.2 HdSct.Temp
## 同じだったら、Countの確認
	execute if score $HdSct.lib.Different HdSct.Temp matches 0 run function hd.sct:lib/compare.item/id/
