#> hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/count
#
# Countが同じか確認
#
# @within function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/id/
say Count確認

#> ScoreHolder
# @private
# @within function hd.sct:sct/changed.items/check.recipe/2/
 #declare score_holder $HdSct.Count.1
 #declare score_holder $HdSct.Count.2
## Countを取得
	execute store result score $HdSct.Count.1 HdSct.Temp run data get storage hd.sct:temp ItemsCopy[-10].Count
	execute store result score $HdSct.Count.2 HdSct.Temp run data get storage hd.sct:temp RecipesCopy[-1].Items[-10].Count
## Countを比較する(今回はfalseがOK判定なので、不等号の向きが逆でOK)
	execute store success score $HdSct.Same.Recipe HdSct.Temp if score $HdSct.Count.1 HdSct.Temp < $HdSct.Count.2 HdSct.Temp
## tagの確認
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 0 if data storage hd.sct:temp ItemsCopy[-10].tag run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/tag
	execute if score $HdSct.Same.Recipe HdSct.Temp matches 0 if data storage hd.sct:temp RecipesCopy[-1].Items[-10].tag unless data storage hd.sct:temp ItemsCopy[-10].tag run function hd.sct:sct/changed.items/check.recipe/2/find.recipe/check/tag
