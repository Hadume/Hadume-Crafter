#> hd.rc:main/recipe_book/reset/
#
# レシピブックの内容をリセット
#
# @within function
#   hd.rc:main/recipe_book/reset/tell
#   hd.rc:add.recipes/

#> ScoreHolder
# @within function hd.rc:tick
# @private
 #declare score_holder $HdRc.Recipes.Now
 #declare score_holder $HdRc.Recipes.Before
## レシピブックをリセットする
	execute if data storage hd.rc:recipe_book _ run data remove storage hd.rc:recipe_book _
## ページカウントをリセット
	execute if score $HdRc.Page HdRc.Global matches ..2147483647 run scoreboard players reset $HdRc.Page
## レシピデータをセットする
	data remove storage hd.rc:recipe_book NotYet
	data modify storage hd.rc:recipe_book NotYet append from storage hd.rc.asset:recipes _[][]
## 前の数値と今の数値を同じにする
	execute store result score $HdRc.Recipes.Before HdRc.Global if data storage hd.rc.asset:recipes _[][]
