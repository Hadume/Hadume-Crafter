#> hd.sct:main/recipe_book/reset/
#
# レシピブックの内容をリセット
#
# @within function
#   hd.sct:main/recipe_book/reset/tell
#   hd.sct:add.recipes/

#> ScoreHolder
# @within function hd.sct:tick
# @private
 #declare score_holder $HdSct.Recipes.Now
 #declare score_holder $HdSct.Recipes.Before
## レシピブックをリセットする
	execute if data storage hd.sct:recipe_book _ run data remove storage hd.sct:recipe_book _
## ページカウントをリセット
	execute if score $HdSct.Page HdSct.Global matches ..2147483647 run scoreboard players reset $HdSct.Page
## レシピデータをセットする
	data remove storage hd.sct:recipe_book NotYet
	data modify storage hd.sct:recipe_book NotYet append from storage hd.sct.asset:recipes _[][]
## 前の数値と今の数値を同じにする
	execute store result score $HdSct.Recipes.Before HdSct.Global if data storage hd.sct.asset:recipes _[][]
